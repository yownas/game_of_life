#!/bin/bash
o=$(cat);E=$(printf "%$(wc -L<<<$o|sed 's/ .*//')s");e=$(tr \  .<<<$E)
n=$((echo 2o;seq -sp 255)|dc|xargs printf "%.8i\n"|tr 01 ' O');z='s/O/[OS]/g;s/ /[ B]/g'
Q='BEGIN{FS=""}/^ *(O *){3}$/{print ":L"++i";s/("$1$2$3"'$e'"$4")o("$5"'$e'"$6$7$8")/\\1z\\2/;tL"i";"}'
m=$(awk "$(sed 's/3/2,3/'<<<$Q)"<<<$n|sed "$z;y/oz/OS/";awk "$Q"<<<$n|sed "$z;y/Loz/l B/";)
while [ "$o" != "$l" ];do l="$o";o=$((echo " $E ";sed 's/^/ /;s/$/ /'<<<$l;echo " $E ")|tr '\012' -|sed -E "$m"|\
tr OSB- ' OO\012'|sed 's/^.//;s/.$//'|tail -n+2|head -n-1);clear;echo "$o";echo Gen: $(( ++i ));sleep 1;done
