#!/bin/bash

P='^[^O]*(O[^O]*){';z='s/O/[OS]/g;s/ /[ B]/g;y'
o=$(cat);E=$(printf "%$(wc -L<<<$o|sed 's/ .*//')s");e=$(tr \  .<<<$E)
Q='s/\(...\)\(.\)\(.\)\(...\)/s%\\(\1e\2\\)T\\(\3e\4\\)%\\1f\\2%g;ts;/g;'
n=$((echo 2o;seq -sp 255)|dc|sed 's/^/0000000/;s/^.*\(........\)$/\1/;y/01/ O/')
m=$(echo ":s;";egrep "$P"'2,3}$'<<<$n|sed "$(sed 's/e/'$e'/g;y/Tf/oS/'<<<$Q)"|sed "$z/o/O/";\
egrep "$P"'3}$'<<<$n|sed "$(sed 's/e/'$e'/g;y/Tf/_B/'<<<$Q)"|sed "$z/_/ /")
while [ "$o" != "$l" ];do 
  l="$o";o=$((echo " $E ";sed 's/^/ /;s/$/ /'<<<$l;echo " $E ")|tr '#_\012' O\ -|\
  sed "$m"|tr OSB- ' OO\012'|sed 's/^.//;s/.$//'|tail -n+2|head -n-1)
  clear;echo "$o";echo "Generation: $(( ++i ))";sleep 1
done
