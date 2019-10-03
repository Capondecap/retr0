#!/bin/bash

#clear

clear

#Logo and stuffs

	echo " ################### "
	echo " Wait, loading...... "
	echo " ################### "
	figlet RETR0

#Interface Names
	interface=$'wlan0'
        interface1=$'wlan1'
        interface2=$'wlx7c8bca0b520e'
        interface3=$'mon0'
        interface4=$'mon1'
        interface5=$'wlan0mon'
        interface6=$'wlan1mon'

#Putting interface into monitor mode 
	sudo airmon-ng start "$interface2"
	
#killing process
	sudo airmon-ng check kill 

#scanning 
	sudo airodump-ng "$interface5"
