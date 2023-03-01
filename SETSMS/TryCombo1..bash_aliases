#!/bin/bash
#
# SETSMS: (26/01/2021)
#
# [Open Source] - [Código Abierto]
#
# Variables y Colores
#
PWD=$(pwd)
OS=$(uname -o)
USER=$(id -u)
verde='\033[32m'
blanco='\033[37m'
rojo='\033[31m'
azul='\033[34m'
negro='\033[0;30m'
rosa='\033[38;5;207m'
amarillo='\033[33m'
morado='\033[35m'
cian='\033[1;36m'
magenta='\033[1;35m'
#

#
# W
#
function Error {
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}INCORRECT CHOICE! ${rojo}█
└═════════════════════┘
"${blanco}
sleep 0.5
}
#
# Banner SETSMS
#
function SETSMS {
	sleep 0.5
	clear
echo -e "${verde}██╗""${cian}██████╗""${azul}░███████╗""${rojo}░█████╗░"
echo -e "${verde}██║""${cian}██╔══██╗""${azul}██╔════╝""${rojo}██╔══██╗"
echo -e "${verde}██║""${cian}██║░░██║""${azul}█████╗░░""${rojo}██║░░╚═╝"
echo -e "${verde}██║""${cian}██║░░██║""${azul}██╔══╝░░""${rojo}██║░░██╗▗"
echo -e "${verde}██║""${cian}██████╔╝""${azul}██║░░░░░""${rojo}╚█████╔╝"${blanko}

}
#

# Menu Principal
#
function Choose {
SETSMS
echo -e -n "${verde}
┌═══════════════════════┐
█ ${blanco} SELECT ONE OPTIÓN    ${verde}█
└═══════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}RECIEVE OTP TO UNLOCK HACK         ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}ENTER RECIEVED OTP                 ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}03${verde}] ┃ ${blanco}ENTER UPI REFERENCE NUMBER         ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}04${verde}] ┃ ${blanco}SMS TOOLKIT                        ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌══════════════┐
└═>>>█ [${blanco}00${verde}] ┃ ${rojo}EXIT ${verde}█
┃    └══════════════┘
┃
└═>>> "${blanco}
read -r OPTION
sleep 0.5

if [[ ${OPTION} == 0 || ${OPTION} == 00 ]]; then
exit
elif [[ ${OPTION} == 1 || ${OPTION} == 01 ]]; then
source ${RUTA}/tools/target.sh
elif [[ ${OPTION} == 2 || ${OPTION} == 02 ]]; then
source ${RUTA}/tools/save.sh
elif [[ ${OPTION} == 3 || ${OPTION} == 03 ]]; then
source ${RUTA}/tools/spam.sh
elif [[ ${OPTION} == 4 || ${OPTION} == 04 ]]; then
source ${RUTA}/tools/list.sh
else
Error
Choose
fi
}
#
# Declarando Funciones
#
Dependencies
Choose