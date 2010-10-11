#set logscale x
set pointsize 1
set terminal aqua 0 fname 'Helvetica' fsize 24
set xrange [1:100]
f(x) = x * x
plot f(x) title "x * x"

