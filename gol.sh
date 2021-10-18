#!/bin/bash
o=$(cat);E=$(printf "%$(wc -L<<<$o|sed 'sz .*zz')s");e=$(tr \  .<<<$E)
n=$((echo 2o;seq -sp 255)|dc|xargs printf "%.8i\n"|tr 01 ' O');z='soOo[OS]og;si i[ B]ig'
Q='BEGIN{FS=""}/^ *(O *){3}$/{print ":L"++i";sw("$1$2$3"'$e'"$4")o("$5"'$e'"$6$7$8")w\\1z\\2w;tL"i";"}'
m=$(gawk "$(sed 's1312,31'<<<$Q)"<<<$n|sed "$z;yxozxOSx";gawk "$Q"<<<$n|sed "$z;yeLozel Be";)
while [ "$o" != "$l" ];do l="$o";o=$((echo " $E ";sed 'sz^z z;sz$z z'<<<$l;echo " $E ")|tr '\012' -|sed -E "$m"|\
tr OSB- ' OO\012'|sed 'sc^.cc;sc.$cc'|tail -n+2|head -n-1);clear;echo "$o";echo Gen: $(( ++i ));done
