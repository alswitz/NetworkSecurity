#This is the beginning.
echo Running network analysis tool...
#sudo nmap -sP 192.168.0.0/24 >> log_file.txt
grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" log_file.txt >> ip_addresses.txt
sort ip_addresses.txt | uniq -c > sorted_ips.txt
grep -i "[0-9A-F]\{2\}\(:[0-9A-F]\{2\}\)\{5\}" log_file.txt >> mac_addresses.txt
sort mac_addresses.txt | uniq -c > sorted_macs.txt
#watch -n 15 ./script.sh
mac_numbers=$(wc -l < sorted_macs.txt)
echo $mac_numbers Unique Mac Addresses found.
ip_numbers=$(wc -l < sorted_ips.txt)
echo $ip_numbers Unique IP Addresses found.

