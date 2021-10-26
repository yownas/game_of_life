#!/bin/bash
n=`(echo 2o;seq -sp 256 512)|dc|sed 'sy1yy;ys01s Os'` # Silly implementation of Conway's Game of Life
o=`cat`;e=`head -1<<<$o|tr \ O ..`;z='soOo[OS]og;si i[\. +B]ig;ysoz' # Yownas
Q='BEGIN{FS=""}/^ *(O *){3}$/{print ";:L"++i";sw("$1$2$3"'$e'"$4")o("$5"'$e'"$6$7$8")w\\1z\\2w;tL"i}'
m=$(awk "`sed s1312,31<<<$Q`"<<<$n|sed "$z"sOSs;awk "$Q"<<<$n|sed "$z"Ls\ Bls)";sy.-.y\nyg;ysOSBs OO"
while o=`sed -Ez "sy\ny - yg$m"s<<<"$e+ - $o - $e+"|sed /+/d`;do clear;printf "$o\nGen: $[++i]";done
