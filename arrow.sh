#!/bin/bash


now="$(date)"
printf "%s\n"
now="$(date +'%d/%m/%Y')"

m="$(date)"

m="$(date +'%H:%M:%S')"

null="~> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
i="\033[33m"
L="\033[36m"
P="\033[35m"
G="\033[1;96m"
W="\033[30m"
M="\e[1;45m"
C="\e[1;46m"
B="\e[1;40m"
w="\033[0m"
Z="\033[4;31m"
K="\033[0;100m"
D="\033[4;31m"

if [[ -e "/data/data/com.termux/files/home" ]]; then 
 echo -e $g"[+] lolcat already installed"$w
else
echo -e $K"installing lolcat"$w
gem install lolcat &> /dev/null;
fi

if [[ -e "/data/data/com.termux/files/home" ]]; then
 echo -e $g"[+] lolcat already installed"$w
else
echo -e $K"installing fortune"$w
pkg install fotune &> /dev/null;
fi

if [[ -e "/data/data/com.termux/files/home" ]]; then
 echo -e $g"[+] lolcat already installed"$w
else
echo -e $K"installing cowsay"$w
pkg install cowsay &> /dev/null;
fi

## questions
pause_1() {
read -p "do you want more (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        fortune_1
    ;;

    *)
	echo -e $K"you press exit"$w
	exit
    ;;
esac
}

## question2
pause_2() {
read -p "do you want more (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        fortune_2
    ;;
    * )
        echo -e $K"you press exit"$w
	exit
    ;;
esac
}

pause_3() {
read -p   "do you want more (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        fortune_3
    ;;
    * )
        echo -e $K"you press exit"$w
        exit
    ;;
esac
}

pause_4() {
read -p "do you want more (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        fortune_4
    ;;
    * )
        echo -e $K"you press exit"$w
        exit
    ;;
esac
}

pause_5() {
read -p "do you want more (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        fortune_5
    ;;
    * )
        echo -e $K"you press exit"$w
        exit
    ;;
esac
}

pause_6() {
read -p "do you want more (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        fortune_6
	main_menu
    ;;
    * )
        echo -e $K"you press exit"$w
        exit
    ;;
esac
}

## fortune gen
fortune_1() {
fortune | cowsay -f eyes | lolcat
}
fortune_2() {
fortune | cowsay -f skeleton | lolcat
}
fortune_3() {
fortune | cowsay -f turkey | lolcat
}
fortune_4() {
fortune | cowsay -f dragon | lolcat
}
fortune_5() {
fortune | cowsay -f kiss | lolcat
}
fortune_6() {
fortune | cowsay -f daemon | lolcat
}

## main
main_menu() {

fortune_1
pause_1
fortune_2
pause_2
fortune_3
pause_3
fortune_4
pause_4
fortune_5
pause_5
fortune_6
pause_6
}
main_menu
