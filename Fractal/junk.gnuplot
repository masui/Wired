set logscale xy
set pointsize 1
#plot "junk" using ($0+1):($1) # log-log
plot "wikifreq.txt" using ($0+1):($1) title "Wiki Freq" with points 1 5
