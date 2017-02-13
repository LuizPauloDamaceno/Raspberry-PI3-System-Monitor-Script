#!/bin/sh
while(true)
do
hwtemp=$(cat /sys/class/thermal/thermal_zone0/temp)
hwtemp=$((hwtemp/1000))
echo CPU Temperature:$hwtempºC
cpufreq=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)
cpufreq=$((cpufreq/1000))
echo CPU Frequency: $cpufreq MHz
iostat
echo ---------------------------------------------------------------
sleep 1
done
