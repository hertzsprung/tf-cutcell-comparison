set term epslatex color size 2.95,2.2 dashlength 0.5

set style data lines
set xrange [0:5]
set yrange [1e-12:1e0]
set logscale y
set key at 1.6,1e-4 left samplen 3 box
set xlabel "$t$ (hours)" offset 0,1
set ylabel "$\\mathrm{max}(|w|)$ (\\si{\\meter\\per\\second})" offset 4
set xtics offset 0,0.5
set ytics offset 0.5 format "$10^{%T}$"

set bmargin 1.5
set lmargin 5
set rmargin 0.5
set tmargin 1

set style line 1 lt rgbcolor 'black' lw 1 dt 1
set style line 2 lt rgbcolor '#67a846' lw 3 dt 2
set style line 3 lt rgbcolor '#e66101' lw 3 dt 3
set style line 4 lt rgbcolor '#ae017e' lw 3 dt 4

plot "`echo $ATMOSTESTS_DIR`/build/resting-btf-low/energy.dat" using ($1/3600):6 title "BTF" ls 1, \
     "`echo $ATMOSTESTS_DIR`/build/resting-sleve-low/energy.dat" using ($1/3600):6 title "SLEVE" ls 2, \
     "`echo $ATMOSTESTS_DIR`/build/resting-cutCell-low/energy.dat" using ($1/3600):6 title "Cut cell" ls 3, \
     "`echo $ATMOSTESTS_DIR`/build/resting-noOrography-low/energy.dat" using ($1/3600):6 title "Regular grid" ls 4
