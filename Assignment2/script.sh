#This is the beginning.
#sudo nmap -sP 192.168.0.0/24 >> log_file.txt
grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" log_file.txt >> ip_addresses.txt
grep -i "[0-9A-F]\{2\}\(:[0-9A-F]\{2\}\)\{5\}" log_file.txt >> mac_addresses.txt

