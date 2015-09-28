#This is the beginning.
#!/usr/bin/env gnuplot
echo Running network analysis tool...
#sudo nmap -sP 192.168.0.0/24 >> log_file.txt
grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" log_file.txt >> ip_addresses.txt
sort ip_addresses.txt | uniq -c > sorted_ips.dat 
grep -io "[0-9A-F]\{2\}\(:[0-9A-F]\{2\}\)\{5\}" log_file.txt >> mac_addresses.txt
sort mac_addresses.txt | uniq -c > sorted_macs.dat
mac_numbers=$(wc -l < sorted_macs.dat)
echo $mac_numbers Unique Mac Addresses found.
ip_numbers=$(wc -l < sorted_ips.dat)
echo $ip_numbers Unique IP Addresses found.
gnuplot mac_plot.sh
gnuplot ip_plot.sh
convert mac_graph.png ip_graph.png +append address_graph.png
display address_graph.png
exit
