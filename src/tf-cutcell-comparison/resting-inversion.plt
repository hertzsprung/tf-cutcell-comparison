set term epslatex color size 3.15,2.4

set xrange [-25:25]
set yrange [0:5]

set xlabel "$x$ (\\si{\\kilo\\meter})" offset 0,1
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 2

set xtics 25 offset 0,0.3 out nomirror
set ytics 1 offset 0.5
set mytics 2

set bmargin 1.5
set lmargin 5
set rmargin 0.5
set tmargin 1

a = 5e3
hm = 1e3
lambda = 4e3

schaerExp(x) = hm*exp(-(x/a)**2) * cos(pi/lambda*x)**2

set samples 200
set parametric
set trange [-25:25]

set object 1 rect from -25,0.5 to 25,1.5 fc rgbcolor '#cccccc' fs pattern 7 noborder behind
set object 2 rect from -25,2 to 25,3 fc rgbcolor '#dddddd' fs solid noborder behind
set label "High inversion" at 10,2.5 front
set label "Low inversion" at 10,1 front

set label "(a)" at 23,4.7 center front

plot t, schaerExp(t*1000)/1000 notitle lt 1 lc rgbcolor '#ffffff' with filledcurve x1, \
     t, schaerExp(t*1000)/1000 notitle lt 1 lc -1
