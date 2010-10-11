set logscale xy
set pointsize 1
set terminal aqua 0 fname 'Helvetica' fsize 24
plot "fugo.txt" using ($0+1):($1) title "Millionaire" with points 1 5
