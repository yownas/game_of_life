#!/bin/bash

cat > /tmp/gol;l=i=0;E=$(printf "%$(wc -L /tmp/gol|sed 's/ .*//')s");e=$(echo -n "$E"|sed 'y/ /./')
P='^[^O]*(O[^O]*){';x='s/\(...\)\(.\)\(.\)\(...\)/s%\\(\1';y='\\2%g;ts;/g;';z='s/O/[OS]/g;s/ /[ B]/g;y'
n=$( (echo 2o;seq -s p 0 256)|dc|sed 's/^/0000000/;s/^.*\(........\)$/\1/;y/01/ O/');m=$(echo ":s;";
echo "$n" | egrep "$P"'2,3}$' | sed $x$e'\2\\)o\\(\3'$e'\4\\)%\\1S'$y | sed "$z/o/O/";\
echo "$n" | egrep "$P"'3}$' | sed $x$e'\2\\)_\\(\3'$e'\4\\)%\\1B'$y | sed "$z/_/ /")
while [ "$o" != "$l" ]; do 
  l=$o
  o=$( (echo " $E ";sed 's/^/ /;s/$/ /' < /tmp/gol; echo " $E ") | tr '#_\012' 'O -' | sed "$m" |\
  tr 'OSB-' ' OO\012' | sed 's/^.//;s/.$//' | tail -n+2 | head -n-1 | tee /tmp/gol.)
  clear; echo "$o"; echo "Generation: $(( ++i ))"; mv /tmp/gol. /tmp/gol; sleep 1
done
