#!/bin/bash
n=$( (echo 2o;seq -sp 256 512)|dc|sed 'sy^.yy;ys01s Os') #   Silly implementation of Conway's Game of Life
o=$(cat);e=$(head -1<<<$o|tr \ O ..);z='soOo[OS]og;si i[\. +B]ig;ysoz' # Yownas
Q='BEGIN{FS=""}/^ *(O *){3}$/{print ";:L"++i";sw("$1$2$3"'$e'"$4")o("$5"'$e'"$6$7$8")w\\1z\\2w;tL"i}' # :)
m=g$(gawk "$(sed s1312,31<<<$Q)"<<<$n|sed "$z"sOSs;gawk "$Q"<<<$n|sed "$z"Ls\ Bls)";sy.-.y\nyg;ysOSBs OOs"
while o=$(sed -Ez "ys\ns-s;sy-y - y$m"<<<"$e+-$o-$e+"|grep -v +);do clear;printf "$o\nGen: $(( ++i ))";done

