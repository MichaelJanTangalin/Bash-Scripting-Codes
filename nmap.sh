#!/bin/bash
#Sample NMAP Automated Bash Code

sleep 1
echo -e "\e[3m\e[1mHey .. !! ${USER},\e[1m I'm Developed By\e[0m, \e[5m\e[1m\e[91mA U R A \e[92m(SIKYO).. !!"
sleep 2
echo -e "\e[0m"
echo -e "\e[96m"
read -p " [+] Enter Your IP's List Path : " file
sleep 1
read -p " [+] Enter Your Output folder name " output
mkdir $output
sleep 1
echo -e "\e[93m[!] Testing Process is started wait until it's done, have some patience\e[0m"
echo -e ""
echo -e "\e[93m[+] Task 1. service scan\e[0m"
echo -e "\e[93m Task 2. nmap_nse scan\e[0m"
sleep 1
while read line; do
    echo -e "\e[101m[!] Testing IP: $line\e[0m" && nmap -v -sV -d -A -p1-65535 --script vuln,default -T4 -Pn $line -oA $line
    mkdir "$line.scan"
    mv $line.* "$line.scan"
    mv "$line.scan" $output
done < $file
sleep 2
echo -e "\e[1m\e[92m>> ALL Task Completed and Result saved in $output folder ---- Bye ---- :: \e[1m\e[5m\e[92mCompleted[✓]\e[0m"
sleep 2
echo -e "\e[101m[+] PERFORMING ALL IN ONE SCAN : \e[0m" && nmap -v -sV -d -A -p1-65535 --script vuln,default -T4 -Pn -iL $file -oA allscan
mv allscan* $output
echo -e "\e[101m [+] DONE \e[0m"
