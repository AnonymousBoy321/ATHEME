black="\033[0;30m"
red="\033[0;31m"
bred="\033[1;31m"
green="\033[0;32m"
bgreen="\033[1;32m"
yellow="\033[0;33m"
byellow="\033[1;33m"
blue="\033[0;34m"
bblue="\033[1;34m"
purple="\033[0;35m"
bpurple="\033[1;35m"
cyan="\033[0;36m"
bcyan="\033[1;36m"
white="\033[0;37m"
nc="\033[00m"

apt install python3 -y
pip install --upgrade pip && pip3 install lolcat

banner(){
    clear
    echo -e "
${bred}+++++++++++++++++++++++++++++++++++++++${nc}
${bred}+${bgreen}      _ _____ _  _ ___ __  __ ___    ${bred}+${nc}
${bred}+${bgreen}     /_\_   _| || | __|  \/  | __|   ${bred}+${nc}
${bred}+${bgreen}    / _ \| | | __ | _|| |\/| | _|    ${bred}+${nc}
${bred}+${bgreen}   /_/ \_\_| |_||_|___|_|  |_|___|   ${bred}+${nc}
${bred}+${bgreen}                                     ${bred}+${nc}
${bred}+${bblue} https://github.com/AnonymousBoy321/ ${bred}+${nc}
${bred}+${bcyan}  ATheme is mean AnonymousBoyTheme   ${bred}+${nc}
${bred}+++++++++++++++++++++++++++++++++++++++${nc}
${bred}+${blue} [${yellow}1${blue}] ADDOS                           ${bred}+${nc}
${bred}+${blue} [${yellow}c${blue}] terminal clone                  ${bred}+${nc}
${bred}+++++++++++++++++++++++++++++++++++++++${nc}"
}

cmd(){
    echo -e "${byellow}[${yellow}ahelp${byellow}]"
    while true
    do
        echo -en -e "${green}# ${nc}"
        read cmd1

        if [ $cmd1 = "ahelp" ]; then
        echo -e "${bblue}[${blue}lc${bblue}] ${blue}list directory with color"
        echo -e "${bblue}[${blue}pic${bblue}] ${blue}package install with color"
        
        elif [ $cmd1 = "exit" ]; then
        start
        
        elif [ $cmd1 = "lc" ]; then
        ls | lolcat
        
        elif [ $cmd1 = "pic" ]; then
        echo -en -e "${cyan}Enter package: ${nc}"
        read pwcn
        apt install $pwcn | lolcat
        echo -e "${red}  ++++++++++"
        echo -e "${red}  +++DONE+++"
        echo -e "${red}  ++++++++++"
        
        else
        echo -e "${cyan}<--------------------------------->${nc}"
        ${cmd1}
        echo -e "${cyan}<--------------------------------->${nc}"

        fi
    done
}

ddos(){
    echo -ne -e "${cyan}Entet address${yellow}$ "${nc}
    read ip
    echo -ne -e "${cyan}Entet port${yellow}$ "${nc}
    read port
    python3 ADDOS ${ip} ${port}
}

start(){
    banner
    echo -ne -e "${cyan}Enter option${yellow}: ${nc}"
    read optz
    
    if [ $optz = "exit" ]; then
    echo -e "${red}See you"
    exit
    
    elif [ $optz = "1" ]; then
    ddos
    
    elif [ $optz = "c" ]; then
    cmd
    
    elif [ $optz = "C" ]; then
    cmd
    
    else
    start
    fi
}

start
