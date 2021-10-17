#!/bin/bash
P='^ *(O *){';z='s/O/[OS]/g;s/ /[ B]/g;y/o_/O /'
o=$(cat);E=$(printf "%$(wc -L<<<$o|sed 's/ .*//')s");e=$(tr \  .<<<$E)
Q='s/\(...\)\(.\)\(.\)\(...\)/s%\\(\1e\2\\)T\\(\3e\4\\)%\\1f\\2%g;ts;/g;'
n=$((echo 2o;seq -sp 255)|dc|sed -E 's/^/0000000/;s/^.*(.{8})$/\1/;y/01/ O/')
m=$(echo ":s;";egrep "$P"'2,3}$'<<<$n|sed "$(sed 's/e/'$e'/g;y/Tf/oS/'<<<$Q)"|sed "$z";\
egrep "$P"'3}$'<<<$n|sed "$(sed 's/e/'$e'/g;y/Tf/_B/'<<<$Q)"|sed "$z")
while [ "$o" != "$l" ];do l="$o";o=$((echo " $E ";sed 's/^/ /;s/$/ /'<<<$l;echo " $E ")|\
tr '\012' -|sed "$m"|tr OSB- ' OO\012'|sed 's/^.//;s/.$//'|tail -n+2|head -n-1)
clear;echo "$o";echo "Gen: $(( ++i ))";sleep 1
done
