set xlabel "IP Addresses Found"
set ylabel "Frequency"
set style fill solid
set style data boxes
set boxwidth 0.1
set offset graph 0.1, graph 0.1
set term png
set xtics rotate by -45
set output "ip_graph.png"
set xr [0:10]
set yr [0:10]
plot "sorted_ips.dat" using 0:1:xtic(2) with boxes;

