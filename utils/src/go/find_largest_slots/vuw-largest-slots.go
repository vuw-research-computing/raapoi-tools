package main

import (
	"fmt"
	"os"
	"os/exec"
	"regexp"
	"strconv"
	"strings"

	kingpin "github.com/alecthomas/kingpin"
)

type NodeInfo struct {
	FreeCPUs     int
	Memory       int
	GPUType      string
	FreeGPUs     int
	NodeName     string
}

var (
	app        = kingpin.New("find_largest_slots", "Find the largest free slot in a partition")
	partition  = app.Arg("partition", "Name of the partition").Required().String()
	allNodes   = app.Flag("all", "Display largest slot on all nodes").Bool()
	mostGPUs   = app.Flag("most-gpus", "Display the node with the most free GPUs").Bool()
	reGroup    = regexp.MustCompile(`\[(\d+)-(\d+)\]`)
	reCPUAlloc = regexp.MustCompile(`CPUAlloc=(\d+)`)
	reCPUTot   = regexp.MustCompile(`CPUTot=(\d+)`)
	reRealMem  = regexp.MustCompile(`RealMemory=(\d+)`)
	reAllocMem = regexp.MustCompile(`AllocMem=(\d+)`)
	reGres     = regexp.MustCompile(`Gres=(\w+):(\w+):(\d+)`)
	reAllocTRES = regexp.MustCompile(`AllocTRES=.*gres/gpu=(\d+)`)
	reState = regexp.MustCompile(`State=([\w+]+)`)
)

func expandNodeList(nodeList string) []string {
	nodes := []string{}
	for _, nodeRange := range strings.Split(nodeList, ",") {
		groups := reGroup.FindStringSubmatch(nodeRange)
		if len(groups) == 3 {
			start, _ := strconv.Atoi(groups[1])
			end, _ := strconv.Atoi(groups[2])
			prefix := strings.Split(nodeRange, "[")[0]
			for i := start; i <= end; i++ {
				nodes = append(nodes, fmt.Sprintf("%s%02d", prefix, i))
			}
		} else {
			nodes = append(nodes, nodeRange)
		}
	}
	return nodes
}

func getNodeInfo(node string) NodeInfo {
	scontrolCmd := exec.Command("scontrol", "show", "node", node)
	output, _ := scontrolCmd.Output()

	freeCPUs := extractInt(reCPUTot, output) - extractInt(reCPUAlloc, output)
	totalMemory := extractInt(reRealMem, output)
	allocatedMemory := extractInt(reAllocMem, output)
	memory := (totalMemory - allocatedMemory) / 1024

	gresMatch := reGres.FindSubmatch(output)
	gpuType := ""
	totalGPUs := 0
	if len(gresMatch) > 0 {
		gpuType = string(gresMatch[2])
		totalGPUs, _ = strconv.Atoi(string(gresMatch[3]))
	}

	allocGPUs := extractInt(reAllocTRES, output)
	freeGPUs := totalGPUs - allocGPUs

	return NodeInfo{FreeCPUs: freeCPUs, Memory: memory, GPUType: gpuType, FreeGPUs: freeGPUs, NodeName: node}

}

func extractInt(re *regexp.Regexp, data []byte) int {
	match := re.FindSubmatch(data)
	if len(match) > 0 {
		num, _ := strconv.Atoi(string(match[1]))
		return num
	}
	return 0
}

func getNodeState(node string) string {
	scontrolCmd := exec.Command("scontrol", "show", "node", node)
	output, _ := scontrolCmd.Output()

	state := reState.FindSubmatch(output)
	if len(state) > 0 {
		return strings.ToLower(string(state[1]))
	}
	return ""
}

func printLargestSlots(partition string, allNodes, mostGPUs bool) {
	sinfoCmd := exec.Command("sinfo", "-h", "-p", partition, "-o", "%N")
	output, _ := sinfoCmd.Output()
	nodeList := expandNodeList(strings.TrimSpace(string(output)))

	largestSlots := []NodeInfo{}
	maxGPUs := 0
	maxGPUNode := ""
	maxCPUs := 0
	maxMemory := 0
	maxSlotNode := ""

	for _, node := range nodeList {
		state := getNodeState(node)
		if strings.Contains(state, "drain") || strings.Contains(state, "draining") || strings.Contains(state, "down") || strings.Contains(state, "error") || strings.Contains(state, "reserved") {
			continue
		}

		nodeInfo := getNodeInfo(node)

		if mostGPUs {
			if nodeInfo.FreeGPUs > maxGPUs {
				maxGPUs = nodeInfo.FreeGPUs
				maxGPUNode = node
			}
		} else {
			if allNodes {
				largestSlots = append(largestSlots, nodeInfo)
			} else {
				if nodeInfo.FreeCPUs > maxCPUs || (nodeInfo.FreeCPUs == maxCPUs && nodeInfo.Memory > maxMemory) {
					maxCPUs = nodeInfo.FreeCPUs
					maxMemory = nodeInfo.Memory
					maxSlotNode = node
				}
			}
		}
	}

	if mostGPUs {
		nodeInfo := getNodeInfo(maxGPUNode)
		fmt.Printf("%d free %4s GPUs, %3d cpus, and %3d GiB of ram on node %s\n", nodeInfo.FreeGPUs, nodeInfo.GPUType, nodeInfo.FreeCPUs, nodeInfo.Memory, maxGPUNode)
	} else if allNodes {
		for _, nodeInfo := range largestSlots {
			gpuInfo := ""
			if nodeInfo.GPUType != "" {
				gpuInfo = fmt.Sprintf(", %d free %4s GPUs", nodeInfo.FreeGPUs, nodeInfo.GPUType)
			}
			fmt.Printf("%3d cpus and %4d GiB of ram%-16s on node %s\n", nodeInfo.FreeCPUs, nodeInfo.Memory, gpuInfo, nodeInfo.NodeName)
		}
	} else {
		nodeInfo := getNodeInfo(maxSlotNode)
		gpuInfo := ""
		if nodeInfo.GPUType != "" {
			gpuInfo = fmt.Sprintf(", %d free %4s GPUs", nodeInfo.FreeGPUs, nodeInfo.GPUType)
		}
		fmt.Printf("%3d cpus and %4d GiB of ram%-16s on node %s\n", maxCPUs, maxMemory, gpuInfo, maxSlotNode)
	}
}

func partitionExists(partition string) bool {
	sinfoCmd := exec.Command("sinfo", "-h", "-p", partition, "-o", "%N")
	outputBytes, err := sinfoCmd.CombinedOutput()
	if err != nil {
		return false
	}
	output := string(outputBytes)
	return output != ""
}


func main() {
    if len(os.Args) == 1 {
        fmt.Println("Usage:")
        app.Writer().Write([]byte(app.UsageTemplate()))
        os.Exit(0)
    }

    _, err := app.Parse(os.Args[1:])
    if err != nil {
        fmt.Printf("Error: %v\n", err)
        fmt.Println("Usage:")
        app.Writer().Write([]byte(app.UsageTemplate()))
        os.Exit(1)
    }

    if !partitionExists(*partition) {
        fmt.Printf("Error: The partition '%s' does not exist or you misspelled the partition name.\n", *partition)
        os.Exit(1)
    }

    printLargestSlots(*partition, *allNodes, *mostGPUs)
}





