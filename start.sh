ip addr add 192.168.137.2/24 dev usb0   && ip link set usb0 up  && ip route add default via 192.168.137.1 && echo "nameserver 8.8.8.8" | tee /etc/resolv.conf  
