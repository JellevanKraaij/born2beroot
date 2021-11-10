#!/bin/bash
wall "	#Architecture: $(uname -a)
	#CPU physical : $(grep "physical id" /proc/cpuinfo | wc -l)
	#vCPU : $(grep "processor" /proc/cpuinfo | wc -l)
	#Memory Usage: $(free -m | awk 'FNR==2 {print $3}')/$(free -m | awk 'FNR==2 {print $2}')MB ($(free -m | awk 'FNR==2 {printf("%.2f", $3/$2*100)}')%)
	#Disk Usage: $(df -Bm | grep 'vg' | awk '{val += $3} END {print val}')/$(df -Bg | grep 'vg' | awk '{val += $2} END {print val}')Gb ($(df -Bm | grep 'vg' | awk '{val += $2} {val2 += $3} END {printf("%d%%", val2/val*100)}'))
	#CPU load: $(top -bn1 | grep '^%Cpu' | cut -c 36- | awk '{printf("%.1f", 100-$1)}')%
	#Last boot: $(who -b | cut -c 20-)
	#LVM use: $(if [[ $(lsblk | grep 'lvm') ]]; then echo yes; else echo no; fi)
	#Connexions TCP : $(cat /proc/net/sockstat | grep 'TCP:' | awk '{print $3}') ESTABLISHED
	#User log: $(users | wc -w)
	#Network: IP $(hostname -I) ($(cat /sys/class/net/*/address | grep -v '00:00:00:00:00:00' | tr '\n' ' ' | xargs))"
