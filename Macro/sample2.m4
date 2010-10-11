define(times2,`ifelse($1,$2,$3,
   `times2(incr($1),$2,$3)$3')')
define(times,`times2(1,$1,$2)')
times(4,`<br>')
