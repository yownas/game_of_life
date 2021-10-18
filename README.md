# game_of_life
Worst possible implementation of Conways Game of Life?

Slow and might not be 100% accurate.

To run it: `cat random_cells.txt | ./gol.sh`

Should work with any rectangular text-file with spaces as empty cells and "O" as a living cell.
But it will be very slow if the input file is big.

(Apparently needs gawk.)
