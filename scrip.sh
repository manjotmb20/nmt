#!/bin/bash
grep 'IP' packet>ippackets
func1(){
echo $(awk '
BEGIN{
print "----------------------------------------------------------------------------------------"
printf "SOURCE IP\n"
print "-----------------------------------------------------------------------------------------"
printf "\n"
}
{print "IP",": ",$3}' ippackets>resultip)
}
func2(){
echo $(awk '
BEGIN{
print "----------------------------------------------------------------------------------------"
printf "DESTINATION IP\n"
print "-----------------------------------------------------------------------------------------"
printf "\n"
}
{print "IP",": ",$5}' ippackets>resultip2)
}
func3(){
echo $(awk '
BEGIN{
print "----------------------------------------------------------------------------------------"
printf "IP PACKETS\n"
print "-----------------------------------------------------------------------------------------"
printf "\n"
}
{print $1," ",$3," ",$5," ",$7," ",$9," ",$11," ",$17}' ippackets>resultipall)
}




