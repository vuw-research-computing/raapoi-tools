import shutil

#define the filename to use as output
motd="/etc/motd"
# motd="motd.test"

# The different colours as variables
W="\033[01;37m" # WHITE
B="\033[01;34m" # BLUE
G="\033[01;32m" # GREEN
R="\033[01;31m" # RED
RESET="\033[0m"

tib = 2 ** 40  # tib == tibibyte
gb = 10 ** 9   # GB == gigabyte

# get disk space
totals, useds, frees = shutil.disk_usage("/nfs/scratch")
totals2, useds2, frees2 = shutil.disk_usage("/nfs/scratch2")

#Write file
with open(motd,'w') as out:
    out.writelines([
        " \n", 
        G                                  ,
        "______                        _  \n",
        "| ___ \                      (_) \n",
        "| |_/ /__ _  __ _ _ __   ___  _  \n",
        "|    // _` |/ _` | '_ \ / _ \| | \n",
        "| |\ \ (_| | (_| | |_) | (_) | | \n",
        "\_| \_\__,_|\__,_| .__/ \___/|_| \n",
        "                 | |             \n",
        "                 |_|             \n",
        RESET,
        " *  Documentation:    https://vuw-research-computing.github.io/raapoi-docs/ \n",
        " *  Slack:            https://uwrc.slack.com/  \n",
        " *  Cluster Reports:  http://raapoi.vuw.ac.nz/ \n",
        "  \n",
        " * Scratch : "+R+"{:3.0f}%".format(useds*100/totals)+W+ " full with "+R+"{:6.2f} TiB".format(frees/tib)+W +" remaining\n",
        " * Scratch2: "+R+"{:3.0f}%".format(useds2*100/totals2)+W+ " full with "+R+"{:6.2f} TiB".format(frees2/tib)+W +" remaining",
        RESET +"\n\n\n"
    ])