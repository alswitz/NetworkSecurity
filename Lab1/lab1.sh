#Flush(ing the toilet)
iptables -F

#SSH
iptables -A INPUT -p tcp -dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp -sport 22 -j ACCEPT

#Local Subnetting
iptables -A INPUT -s 192.168.0.1/8 -d 192.168.0.1/8 -p all -j ACCEPT

#Ping
iptables -A INPUT -p icmp -j ACCEPT
iptables -A OUTPUT -p icmp -j ACCEPT

#HTTP and HTTPS
iptables -A INPUT -p tcp -dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp -sport 80 -j ACCEPT
iptables -A INPUT -p tcp -dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp -sport 443 -j ACCEPT

#DNS
iptables -A INPUT -p tcp -dport 53 -j ACCEPT
iptables -A OUTPUT -p tcp -sport 53 -j ACCEPT
iptables -A INPUT -p udp -dport 53 -j ACCEPT
iptables -A OUTPUT -p udp -sport 53 -j ACCEPT

#FTP
iptables -A INPUT -p tcp -dport 21 -j ACCEPT
iptables -A OUTPUT -p tcp -sport 21 -j ACCEPT

#Drop other connections (Rejecting is bad!)
iptables -A INPUT -j DROP
