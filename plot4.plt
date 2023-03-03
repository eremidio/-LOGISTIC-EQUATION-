#Equação logistica
set encoding utf8
set title "Equação Logística"
set xlabel "Número de iterações"
set ylabel "População (fração em relação ao total)"
set ytics 0.2
set xtics 10
set xrange [0:100]
set yrange[0:1]
set grid
set nokey
plot "logistica.txt" using 1:2 with linespoints
