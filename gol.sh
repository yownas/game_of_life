#!/bin/bash
o=$(cat);E=$(printf %$(wc -L<<<$o|sed sz' .*'zz)s);e=$(tr \  .<<<$E) # Silly implementation of Game of Life
n=$((echo 2o;seq -sp 225)|dc|xargs printf "%.8i\n"|tr 01 \ O);z='soOo[OS]og;si i[ B]ig' #         by Yownas
Q='BEGIN{FS=""}/^ *(O *){3}$/{print ":L"++i";sw("$1$2$3"'$e'"$4")o("$5"'$e'"$6$7$8")w\\1z\\2w;tL"i";"}'
m=$(gawk "$(sed s1312,31<<<$Q)"<<<$n|sed "$z;yxozxOSx";gawk "$Q"<<<$n|sed "$z;yeLozel Be")";sy.-.y\nyg;ysOSBs OOs"
while o=$(sed -Ez "ys\ns-s;sy-y - yg;$m"<<<"$E+-$o-$E+"|grep -v +);do clear;echo -e "$o\nGen: $(( ++i ))";done
