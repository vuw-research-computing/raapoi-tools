#!/bin/bash
#
#
# Message of the Day filename
MOTD="/etc/motd.color"

# Text Color Variables
BLK="\033[00;30m"    # BLACK
R="\033[00;31m"      # RED
GRN="\033[00;32m"    # GREEN
BR="\033[00;33m"     # BROWN
BL="\033[00;34m"     # BLUW
P="\033[00;35m"      # PURPLE
C="\033[00;36m"      # CYAN
LtG="\033[00;37m"    # LIGHT GRAY

DkG="\033[01;30m"    # DARK GRAY
LtR="\033[01;31m"    # LIGHT RED
LtGRN="\033[01;32m"  # LIGHT GREEN
Y="\033[01;33m"      # YELLOW
LtBL="\033[01;34m"   # LIGHT BLUE
LtP="\033[01;35m"    # LIGHT PURPLE
LtC="\033[01;36m"    # LIGHT CYAN
W="\033[01;37m"      # WHITE

RESET="\033[0m"
clear > $MOTD        # removes all text from /etc/motd
echo -e "\033[01;32m" >> $MOTD
echo "  _____                         _ " >> $MOTD
echo " |  __ \                       (_)" >> $MOTD
echo " | |__) |__ _  __ _ _ __   ___  _ " >> $MOTD
echo " |  _  // _\` |/ _\` | '_ \ / _ \| |" >> $MOTD
echo " | | \ \ (_| | (_| | |_) | (_) | |" >> $MOTD
echo " |_|  \_\__,_|\__,_| .__/ \___/|_|" >> $MOTD
echo "                   | |            " >> $MOTD
echo "                   |_|            " >> $MOTD
echo -e "\033[0m" >> $MOTD
echo -e " *  Documentation:    https://vuw-research-computing.github.io/raapoi-docs/" >> $MOTD
echo -e " *  Slack:            https://uwrc.slack.com/" >> $MOTD
echo -e " *  Cluster Reports:  http://raapoi.vuw.ac.nz/" >> $MOTD
echo -e "\033[01;33m" >> $MOTD
echo -e "Note that the scratch storage is not a safe place for long term data storage!" >> $MOTD
echo -e "Talk to Digital Solutions about their research storage - it's backed up" >> $MOTD
echo -e "and duplicated, unlike scratch" >> $MOTD
echo -e $LtGRN"" >> $MOTD
echo -e "HPC drop in session Wednesday the 19th of May at 2PM." >>$MOTD
echo -e "Drop by to chat HPC/Research software/methods" >>$MOTD
echo -e $LtBL "https://vuw.zoom.us/my/andre.geldenhuis" >>$MOTD
echo -e "\033[0m" >> $MOTD
