# plotbands.plt
reset
set encoding utf8
set terminal svg size 250,400 enhanced font 'Helvetica,12'
set output 'plotbands.svg'
set style line 1 lt -1 lc -1 lw 0.75 pt -1
set style line 2 lt -1 lc 1 lw 0.75 pt -1
set style line 3 lt 0 lc 1 lw 0.75 pt -1

set ylabel 'E-Ef (eV)' offset 2,0,0

# rentang sumbu
x1= 0.6666
x2= 0.9999
xmax = 1.5773
ymin = -6
ymax = 6
ef = -0.4053
set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("Γ" 0, "K" x1, "M" x2, "Γ" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax ls 3
set arrow 2 nohead from x2,ymin to x2,ymax ls 3
set arrow 3 nohead from 0,0 to xmax,0 ls 3
set mytics 3 

plot 'gr.bands.dat.gnu' using 1:($2-ef) notitle with linespoints ls 1 
unset output
