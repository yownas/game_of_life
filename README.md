# game_of_life
Worst possible implementation of Conways Game of Life?

Slow and might not be 100% accurate.

To run it: `./gol.sh < random_cells.txt`

Should work with any rectangular text-file with spaces as empty cells and "O" as a living cell.
But it will be very slow if the input file is big.

(Apparently needs gawk.)

To create a random text block you can do something like this:

`X=50 ; Y=50 ; cat /dev/urandom | tr -dc '0-9a-z' | fold -w ${1:-$X} | head -n $Y | sed 's/[0-9]/O/g;s/[a-z]/ /g' > random_$X+$Y.txt`
