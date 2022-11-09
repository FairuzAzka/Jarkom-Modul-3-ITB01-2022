echo "nameserver 192.168.122.1" > /etc/resolv.conf
apt-get update
apt-get install isc-dhcp-server -y

# nomor 2
echo "
    # On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
    #       Separate multiple interfaces with spaces, e.g. \"eth0 eth1\".
    INTERFACES=\"eth0\"
" > /etc/default/isc-dhcp-server

echo " 
    subnet 10.45.2.0 netmask 255.255.255.0 {
    }
    subnet 10.45.1.0 netmask 255.255.255.0 {
        range  10.45.1.50 10.45.1.88;
        range  10.45.1.120 10.45.1.155;
        option routers 10.45.1.1;
        option broadcast-address 10.45.1.255;
        option domain-name-servers 10.45.2.2;
        default-lease-time 300;
        max-lease-time 6900;
    }

    subnet 10.45.3.0 netmask 255.255.255.0 {
        range  10.45.3.10 10.45.3.30;
        range  10.45.3.60 10.45.3.85;
        option routers 10.45.3.1;
        option broadcast-address 10.45.3.255;
        option domain-name-servers 10.45.2.2;
        default-lease-time 600;
        max-lease-time 6900;
    }

    host Skypie {
        hardware ethernet be:c0:ff:37:bb:09;
        fixed-address 10.45.3.13;
    }
" >  /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart

service isc-dhcp-server status