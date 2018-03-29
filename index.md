#!/bin/sh
echo .
echo .
echo This is a script for Putting UBNT Router into Monitor Mode
echo.
sleep 3

# will now ssh into the UBNT router on address 192.168.1.20 user:pass ubnt:ubnt

sshpass -p 'ubnt' ssh -o StrictHostKeyChecking=no ubnt@192.168.1.20
sleep 5

# will now automatically take down antennas and destroy connections and bring them both back up in in monitor mode
echo Will now Set Monitor mode on the Antennas  
ifconfig ath0 down
sleep 1
ifconfig ath1 down
sleep 1
wlanconfig ath0 destroy
sleep 1
wlanconfig ath1 destroy
sleep 1
wlanconfig mon0 create wlandev wifi0 wlanmode monitor
sleep 1
wlanconfig mon1 create wlandev wifi1 wlanmode monitor
sleep 1
ifconfig mon0 up
sleep 2
ifconfig mon1 up
sleep 2

# Will now give menu to make choice after setting up to chose

PS3='Please enter your choice for antenna : '
options=("Option 1" "Option 2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "Antenna 1"
            ;;
        "Option 2")
            echo "Antenna 2"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac

	
$opt 1
PS3='Please enter your choice for antenna : '
options=("Option 1" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2"  "Quit")
select opt in "${options[@]}"
do
    case $opt10 in
        "Option 1")
            echo "Channel 1"
            ;;
        "Option 2")
            echo "Channel 2"
            ;;
        "Option 3")
            echo "Channel 3"
            ;;
        "Option 4")
            echo "Channel 4"
            ;;
        "Option 5")
            echo "Channel 5"
            ;;
        "Option 6")
            echo "Channel 6"
            ;;
        "Option 7")
            echo "Channel 7"
            ;;
        "Option 8")
            echo "AChannel 8"
            ;;
        "Option 9")
            echo "Channel 9"
            ;;
        "Option 10")
            echo "Channel 10"
            ;;
        "Option 11")
            echo "Channel 11"
            ;;
        "Option 12")
            echo "Channel 12"
            ;;
        "Option 13")
            echo "Channel 13"
            ;;
        "Option 14")
            echo "Channel 14"
            ;;			
        "Quit")
            shutdown
            ;;
        *) echo invalid option;;
    esac

$opt 2
PS3='Please enter your choice for antenna : '
options=("Option 1" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2" "Option 2"  "Quit")
select opt in "${options[@]}"
do
    case $opt100 in
        "Option 1")
            echo "Channel 1"
            ;;
        "Option 2")
            echo "Channel 2"
            ;;
        "Option 3")
            echo "Channel 3"
            ;;
        "Option 4")
            echo "Channel 4"
            ;;
        "Option 5")
            echo "Channel 5"
            ;;
        "Option 6")
            echo "Channel 6"
            ;;
        "Option 7")
            echo "Channel 7"
            ;;
        "Option 8")
            echo "AChannel 8"
            ;;
        "Option 9")
            echo "Channel 9"
            ;;
        "Option 10")
            echo "Channel 10"
            ;;
        "Option 11")
            echo "Channel 11"
            ;;
        "Option 12")
            echo "Channel 12"
            ;;
        "Option 13")
            echo "Channel 13"
            ;;
        "Option 14")
            echo "Channel 14"
            ;;			
        "Quit")
            shutdown
            ;;
        *) echo invalid option;;
    esac	

	


done






================ Choose monitor mode on channel =======================

Chose Mode Mon 0
Iwconfig mon0 Channel 1
Iwconfig mon0 Channel 2
Iwconfig mon0 Channel 3
Iwconfig mon0 Channel 4
Iwconfig mon0 Channel 5
Iwconfig mon0 Channel 6
Iwconfig mon0 Channel 7
Iwconfig mon0 Channel 8
Iwconfig mon0 Channel 9
Iwconfig mon0 Channel 10
Iwconfig mon0 Channel 11
Iwconfig mon0 Channel 12
Iwconfig mon0 Channel 13
Iwconfig mon0 Channel 14


chose mode mon 1
Iwconfig mon1 Channel 1
Iwconfig mon1 Channel 2
Iwconfig mon1 Channel 3
Iwconfig mon1 Channel 4
Iwconfig mon1 Channel 5
Iwconfig mon1 Channel 6
Iwconfig mon1 Channel 7
Iwconfig mon1 Channel 8
Iwconfig mon1 Channel 9
Iwconfig mon1 Channel 10
Iwconfig mon1 Channel 11
Iwconfig mon1 Channel 12
Iwconfig mon1 Channel 13
Iwconfig mon1 Channel 14



=========== To View Dump To Session ================
tcpdump -i mon0 -vvv
tcpdump -i mon1 -vvv



=========== To Dump To Wireshark ====================
ssh ubnt@192.168.1.20 tcpdump -i mon0 -U -s0 -w - | wireshark -k -i - 

ssh ubnt@192.168.1.20 tcpdump -i mon1 -U -s0 -w - | wireshark -k -i - 
