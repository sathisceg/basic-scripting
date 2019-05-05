
echo -e "Enter username : \c"
read username
echo -e "Enter password : \c"
read -s password

echo 


wget https://vpn.iiit.ac.in/secure/linux.ovpn --user=$username --password=$password

sed -i 's/group nobody/group nogroup/' linux.ovpn


#https://vpn.iiit.ac.in/secure/linux.ovpn

sleep 3s

sudo openvpn --config linux.ovpn

sudo sed -i '1s/.*/nameserver 10.4.20.204/' /etc/resolv.conf

echo "VPN for IIITH is Running"
