set term epslatex color size 3.15,2.2
set termoption dash

set style data lines
set xrange [0:5]
set yrange [1e-12:1e0]
set logscale y
set key at 1.6,1e-5 left samplen 3
set xlabel "$t$ (hours)" offset 0,1
set ylabel "$\\mathrm{max}(|w|)$ (\\si{\\meter\\per\\second})" offset 4
set xtics offset 0,0.5
set ytics offset 0.5 format "$10^{%T}$"

set bmargin 1.5
set lmargin 5
set rmargin 0.5
set tmargin 1

set label 1 "(b)" at 4.8,2e-1 center front

set multiplot

plot "`echo $ATMOSTESTS_DIR`/build/resting-btf-high/energy.dat" using ($1/3600):6 title 'BTF' lc 0, \
     "`echo $ATMOSTESTS_DIR`/build/resting-sleve-high/energy.dat" using ($1/3600):6 title 'SLEVE' lc rgbcolor '#67a846', \
     "`echo $ATMOSTESTS_DIR`/build/resting-cutCell-high/energy.dat" using ($1/3600):6 title 'Cut cell' lc rgbcolor '#e66101', \
     "`echo $ATMOSTESTS_DIR`/build/resting-noOrography-high/energy.dat" using ($1/3600):6 title 'Regular grid' lc rgbcolor '#ae017e', \
     "`echo $ATMOSTESTS_DIR`/build/resting-btf-low/energy.dat" using ($1/3600):6 notitle lc 0 dt 3 lw 3, \
     "`echo $ATMOSTESTS_DIR`/build/resting-sleve-low/energy.dat" using ($1/3600):6 notitle lc rgbcolor '#67a846' dt 3 lw 3, \
     "`echo $ATMOSTESTS_DIR`/build/resting-cutCell-low/energy.dat" using ($1/3600):6 notitle lc rgbcolor '#e66101' dt 3 lw 3, \
     "`echo $ATMOSTESTS_DIR`/build/resting-noOrography-low/energy.dat" using ($1/3600):6 notitle lc rgbcolor '#ae017e' dt 3 lw 3

unset xtics
unset ytics
unset xlabel
unset ylabel
unset border

set key at -0.7,1e-5 left samplen 3

plot "+" u 1:(NaN) title "High inversion" w lines lc rgbcolor '#666666', \
     "+" u 1:(NaN) title "Low inversion" w lines lc rgbcolor '#666666' dt 3 lw 3

unset multiplot
