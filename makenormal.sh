#!/bin/bash 

#clear

clear

#Logo and stuffs
	
	figlet RETR0
	sleep 1

#Interface names
        interface=$'wlan0'
        interface1=$'wlan1'
        interface2=$'wlx7c8bca0b520e'
        interface3=$'mon0'
        interface4=$'mon1'
        interface5=$'wlan0mon'
        interface6=$'wlan1mon'

#Making everthing go normal

#Sevices
        sudo service NetworkManager restart
        sudo service avahi-daemon restart
        sudo service wpa_supplicant restart

#Interfaces
        sudo airmon-ng stop "$interface5"
        sudo ifconfig "$interface2" down
        sudo iwconfig "$interface2" mode managed
        sudo ifconfig "$interface2" up                                                                                      
