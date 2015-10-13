set term epslatex color size 6,4
set style data linespoints

set multiplot layout 1,2 margins 0.1,0.95,0.1,0.9 spacing 0.15

set xrange [-0.1:0.1]
set yrange [0:1200]
set xlabel "$\\theta$ (\\si{\\kelvin})" offset 0,0.5
set ylabel "$z$ (\\si{\\meter})" offset 3
set yzeroaxis

set key at 0.1875,1200 title "$\\Delta z$"

set title "BTF"
plot "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-300dz/18000/sampleLine.dat" using 2:1 title '\SI{300}{\meter}' lc 1, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-250dz/18000/sampleLine.dat" using 2:1 title '\SI{250}{\meter}' lc 2, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-200dz/18000/sampleLine.dat" using 2:1 title '\SI{200}{\meter}' lc 3, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-150dz/18000/sampleLine.dat" using 2:1 title '\SI{150}{\meter}' lc 4

unset key
unset ylabel
set title "Cut cell"
set ytics format ""
plot "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-300dz/18000/sampleLine.dat" using 2:1 title '300dz' lc 1, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-250dz/18000/sampleLine.dat" using 2:1 title '250dz' lc 2, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-200dz/18000/sampleLine.dat" using 2:1 title '200dz' lc 3, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-150dz/18000/sampleLine.dat" using 2:1 title '\SI{150}{\meter}' lc 4

unset multiplot
