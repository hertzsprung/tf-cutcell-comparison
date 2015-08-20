set term epslatex color size 3.15,2.4
set termoption dash

set style data lines
set xrange [0:5]
set logscale y
set key at 1.6,1e-5 left box samplen 3
set xlabel "$t$ (hours)" offset 0,1
set ylabel "$\\mathrm{max}(w)$ (\\si{\\meter\\per\\second})" offset 4
set xtics offset 0,0.5
set ytics offset 0.5 format "$10^{%T}$"

set bmargin 2.5
set rmargin 1
set tmargin 1

plot "`echo $ATMOSTESTS_DIR`/build/resting-btf-lorenz/energy.dat" using ($1/3600):6 title 'BTF' lc 0 dt 1, \
     "`echo $ATMOSTESTS_DIR`/build/resting-sleve-lorenz/energy.dat" using ($1/3600):6 title 'SLEVE' lc rgbcolor '#67a846' dt 5 lw 3, \
     "`echo $ATMOSTESTS_DIR`/build/resting-cutCell-lorenz/energy.dat" using ($1/3600):6 title 'Cut cell' lc rgbcolor '#e66101' dt 3 lw 3, \
     "`echo $ATMOSTESTS_DIR`/build/resting-noOrography-lorenz/energy.dat" using ($1/3600):6 title 'Regular grid' lc rgbcolor '#ae017e' dt 4 lw 3

