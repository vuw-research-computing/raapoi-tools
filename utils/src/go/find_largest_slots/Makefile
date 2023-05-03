BUILD_DIR := build
GOBIN := $(abspath $(BUILD_DIR)/bin)
GOPATH := $(abspath $(BUILD_DIR)/go)
MODFILE := $(abspath $(BUILD_DIR)/go.mod)

.PHONY: all clean

all: $(BUILD_DIR)/largest-slots

$(BUILD_DIR)/largest-slots: $(wildcard *.go)
	@mkdir -p $(BUILD_DIR)/bin $(BUILD_DIR)/go
	@GOBIN=$(GOBIN) GOPATH=$(GOPATH) go mod init vuw-largest-slots
	@GOBIN=$(GOBIN) GOPATH=$(GOPATH) go get github.com/alecthomas/kingpin
	@GOBIN=$(GOBIN) GOPATH=$(GOPATH) go build -o $@ -modfile $(MODFILE)

clean:
	@rm -rf $(BUILD_DIR)

