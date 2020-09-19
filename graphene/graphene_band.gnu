set style data dots
set nokey
set terminal png size 400 300
set output 'band.png'
set xrange [0: 4.02878]
set yrange [-10.11584 : 11.01712]
set arrow from  1.47463, -10.11584 to  1.47463,  11.01712 nohead
set arrow from  2.32601, -10.11584 to  2.32601,  11.01712 nohead
set xtics ("G"  0.00000,"M"  1.47463,"K"  2.32601,"G"  4.02878)
plot "graphene_band.dat"

