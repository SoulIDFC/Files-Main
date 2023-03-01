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
yellow='\e[1;33m\e[0m\e[1;33m'
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
echo -e " ${rojo}██╗██████╗░███████╗░█████╗░""${verde}███████╗███╗   ███╗███████╗"
echo -e " ${rojo}██║██╔══██╗██╔════╝██╔══██╗""${verde}██╔════╝████╗ ████║██╔════╝"
echo -e " ${rojo}██║██║░░██║█████╗░░██║░░╚═╝""${verde}███████╗██╔████╔██║███████╗"
echo -e " ${rojo}██║██║░░██║██╔══╝░░██║░░██╗""${verde}╚════██║██║╚██╔╝██║╚════██║"
echo -e " ${rojo}██║██████╔╝██║░░░░░╚█████╔╝""${verde}███████║██║ ╚═╝ ██║███████║  V1.0"             
echo -e " ${verde}                          ""${verde}╚══════╝╚═╝     ╚═╝╚══════╝"
echo -e " ${morado}[::]Tool Created By  IDFC (MITHUN) Contact On Telegram @IDFCMONEY"
echo -e ""
echo -e " ${cian}██████████████████${rojo}██████████████████${yellow}██████████████████"${blanco}
}

# Menu Principal
#
function Choose {
SETSMS
echo -e -n  "${verde}
┌═══════════════════════┐
█ ${blanco} SELECT ONE OPTIÓN    ${verde}█
└═══════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}Choice1                            ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}Choice2                            ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}03${verde}] ┃ ${blanco}Choice3                            ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌═══════════════════════════════════════════┐
└═>>>█ [${blanco}04${verde}] ┃ ${blanco}Choice4                            ${verde}█
┃    └═══════════════════════════════════════════┘
┃    ┌══════════════┐
└═>>>█ [${blanco}00${verde}] ┃ ${rojo}EXIT ${verde}█
┃    └══════════════┘
┃
└═>>> " ${blanco}
read -r OPTION
sleep 0.5
if [[ ${OPTION} == 0 || ${OPTION} == 00 ]]; then
exit
elif [[ ${OPTION} == 1 || ${OPTION} == 01 ]]; then
source ${RUTA}
elif [[ ${OPTION} == 2 || ${OPTION} == 02 ]]; then
source ${RUTA}
elif [[ ${OPTION} == 3 || ${OPTION} == 03 ]]; then
source ${RUTA}
elif [[ ${OPTION} == 4 || ${OPTION} == 04 ]]; then
source ${RUTA}
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