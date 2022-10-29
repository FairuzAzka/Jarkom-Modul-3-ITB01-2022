echo 'nameserver 192.168.122.1' > /etc/resolv.conf

apt-get update         
apt-get install dnsutils -y

# NOMOR 8
apt-get install lynx -y

# NOMOR 2
# apt-get update  
# apt-get install dnsutils -y  
# echo "nameserver 10.45.2.2 > /etc/resolv.conf

# nameserver 10.45.2.2 -> IP WISE
# nameserver 10.45.3.2 -> IP Berlint
# nameserver 10.45.3.3 -> IP Eden
echo "
nameserver 10.45.2.2 
nameserver 10.45.3.2
nameserver 10.45.3.3
" > /etc/resolv.conf
