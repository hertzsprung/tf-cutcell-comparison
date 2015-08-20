set term epslatex color size 3.1,2.8
set termoption dashed
set style data linespoints

set lmargin 5
set rmargin 1

set xrange [287.5:292]
set x2range [0.96:1.0]
set yrange [0:1200]
set xlabel "$\\theta$ (\\si{\\kelvin})" offset 0,0.5
set x2label "$\\Pi$" offset 0,-0.5
set ylabel "$z$ (\\si{\\kilo\\meter})" offset 3
set xtics nomirror
set x2tics
set key at 292,860 right top samplen 3

plot "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-500m/18000/exnerTheta-sampleLine.dat" using 2:1 axes x2y1 title 'BTF $\Pi$' lt 1 lc rgbcolor '#000000', \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-500m/18000/exnerTheta-sampleLine.dat" using 3:1 title 'BTF $\theta$' dt 2 pt 7 lw 1.5 lc rgbcolor '#000000', \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-500m/18000/exnerTheta-sampleLine.dat" using 3:1 title 'Cut cell $\theta$' dt 6 pt 4 lc rgbcolor '#e66101'
