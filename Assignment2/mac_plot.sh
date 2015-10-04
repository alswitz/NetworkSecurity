set xlabel "MAC Addresses Found"
set ylabel "Frequency"
set style fill solid
set style data boxes
set boxwidth 0.1
set offset graph 0.1, graph 0.1
set term png
set xtics rotate by -45
set output "mac_graph.png"
set yr [0:25]
plot "sorted_macs.dat" using 0:1:xtic(2) with boxes;

