#!/bin/bash
a=0
o=0
lightgreen=`echo -en "\e[92m"`
lightblue=`echo -en "\e[94m"`
lightred=`echo -en "\e[91m"`
lightaqua=`echo -en "\e[96m"`
normal=`echo -en "\e[0m"`
lightyellow=`echo -en "\e[93m"`
lightpurple=`echo -en "\e[95m"`
aqua=`echo -en "\e[36m"`
sleep 2
echo -e ${lightgreen}
apt install nmap
clear
sleep 1.5

echo  ${lightgreen}"""
 ███▄    █  ███▄ ▄███▓ ▄▄▄       ██▓███
 ██ ▀█   █ ▓██▒▀█▀ ██▒▒████▄    ▓██░  ██▒
▓██  ▀█ ██▒▓██    ▓██░▒██  ▀█▄  ▓██░ ██▓▒
▓██▒  ▐▌██▒▒██    ▒██ ░██▄▄▄▄██ ▒██▄█▓▒ ▒
▒██░   ▓██░▒██▒   ░██▒ ▓█   ▓██▒▒██▒ ░  ░
░ ▒░   ▒ ▒ ░ ▒░   ░  ░ ▒▒   ▓▒█░▒▓▒░ ░  ░
░ ░░   ░ ▒░░  ░      ░  ▒   ▒▒ ░░▒ ░
   ░   ░ ░ ░      ░     ░   ▒   ░░"""
echo "         ░        ░         ░  ░" ${lightblue} "      BY ZE4N"
echo "[==============================================]"
echo -e "\n \n \n"
echo ${lightred}"          ["${lightaqua}"1"${lightred}"]" ${lightyellow}" Escanear una IP"
echo ${lightred}"          ["${lightaqua}"2"${lightred}"]" ${lightyellow}" Escanear puertos UDP"
echo ${lightred}"          ["${lightaqua}"3"${lightred}"]" ${lightyellow}" Escanear rango IP's"
echo ${lightred}"          ["${lightaqua}"4"${lightred}"]" ${lightyellow}" Escanear una subred"
echo ${lightred}"          ["${lightaqua}"5"${lightred}"]" ${lightyellow}" Escanear un puerto"
echo ${lightred}"          ["${lightaqua}"6"${lightred}"]" ${lightyellow}" Escanear un rango de puertos"
echo ${lightred}"          ["${lightaqua}"7"${lightred}"]" ${lightyellow}" Recoger las cabeceras HTTP"
echo ${lightred}"          ["${lightaqua}"8"${lightred}"]" ${lightyellow}" Escanear con TCP Connect "
echo ${lightred}"          ["${lightaqua}"9"${lightred}"]" ${lightyellow}" Escanear con TCP SYN"
echo -e "\n \n"
read -p ${lightpurple}"[~] Seleccioné una opción > " a
echo -e "\n"
case $a in
        1) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip1
               echo -e "\n"
               nmap $ip1
               echo -e "\n"
        ;;


        2) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip2
               echo -e "\n"
               nmap -sU -p 53,67 $ip2
               echo -e "\n"
        ;;


        3) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip3
               echo -e "\n"
               nmap $ip3-200
               echo -e "\n"
        ;;


        4) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip4
               echo -e "\n"
               nmap $ip4/24
               echo -e "\n"
        ;;


        5) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip5
               echo -e "\n"
               nmap -p 22 $ip5
               echo -e "\n"
        ;;


        6) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip6
               echo -e "\n"
               nmap -p 1-30 $ip6
               echo -e "\n"
        ;;


        7) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip7
               echo -e "\n"
               nmap --script=http-headers $ip7/24
               echo -e "\n"
        ;;


        8) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip8
               echo -e "\n"
               nmap -sT $ip8
               echo -e "\n"
        ;;


        9) read -p ${lightblue}"Ingrese la ip> "${lightgreen} ip9
               echo -e "\n"
               nmap -sS $ip9
               echo -e "\n"
        ;;



esac
