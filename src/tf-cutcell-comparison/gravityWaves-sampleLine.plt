set term epslatex color size 6,4
set style data linespoints

set multiplot layout 2,2 margins 0.1,0.95,0.1,0.9 spacing 0.15

set xrange [-0.2:0.2]
set yrange [0:1200]
set ylabel "$z$ (\\si{\\meter})" offset 3
set yzeroaxis

set key at 0.38,1200 title "$\\Delta z$"

set label 1 "(a)" at -0.18,1100 center front
set title "Gravity waves BTF"
plot "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-300dz/18000/sampleLine.dat" using 2:1 title '\SI{300}{\meter}' lc 1, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-250dz/18000/sampleLine.dat" using 2:1 title '\SI{250}{\meter}' lc 2, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-200dz/18000/sampleLine.dat" using 2:1 title '\SI{200}{\meter}' lc 3, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-btf-250m-150dz/18000/sampleLine.dat" using 2:1 title '\SI{150}{\meter}' lc 4

unset key
unset ylabel
set label 1 "(b)"
set title "Gravity waves cut cell"
set ytics format ""
plot "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-300dz/18000/sampleLine.dat" using 2:1 title '300dz' lc 1, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-250dz/18000/sampleLine.dat" using 2:1 title '250dz' lc 2, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-200dz/18000/sampleLine.dat" using 2:1 title '200dz' lc 3, \
     "`echo $ATMOSTESTS_DIR`/build/gravityWaves-cutCell-250m-150dz/18000/sampleLine.dat" using 2:1 title '\SI{150}{\meter}' lc 4

set xlabel "$\\theta$ (\\si{\\kelvin})" offset 0,0.5
set ytics format "% h"
set label 1 "(c)"
set title "Thermal advection BTF"
plot "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-btf-250m-300dz/18000/sampleLine.dat" using 2:1 title '\SI{300}{\meter}' lc 1, \
     "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-btf-250m-250dz/18000/sampleLine.dat" using 2:1 title '\SI{250}{\meter}' lc 2, \
     "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-btf-250m-200dz/18000/sampleLine.dat" using 2:1 title '\SI{200}{\meter}' lc 3, \
     "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-btf-250m-150dz/18000/sampleLine.dat" using 2:1 title '\SI{150}{\meter}' lc 4

unset ylabel
set label 1 "(d)"
set title "Thermal advection cut cell"
set ytics format ""
plot "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-cutCell-250m-300dz/18000/sampleLine.dat" using 2:1 title '300dz' lc 1, \
     "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-cutCell-250m-250dz/18000/sampleLine.dat" using 2:1 title '250dz' lc 2, \
     "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-cutCell-250m-200dz/18000/sampleLine.dat" using 2:1 title '200dz' lc 3, \
     "`echo $ATMOSTESTS_DIR`/build/thermalAdvection-cutCell-250m-150dz/18000/sampleLine.dat" using 2:1 title '200dz' lc 4

unset multiplot
