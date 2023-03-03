#Equação logistica
set encoding utf8
set title "Equação Logística exponencial: x_{t+1}= x_{t}e^{r(1-x_{t})}"
set xlabel "Número de iterações"
set ylabel "População (fração em relação ao total)"
set ytics 0.5
set xtics 10
set xrange [0:100]
set yrange[0:5]
set grid
set nokey
plot "logistica2.txt" using 1:2 with linespoints lt rgb "blue"
