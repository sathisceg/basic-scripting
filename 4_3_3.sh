

# secure/vpn_resources.tar.gz

# export http_proxy=http://10.4.20.103:8080
# export https_proxy=$http_proxy

# wget   "https://vpn.iiit.ac.in/secure/vpn_resources.tar.gz"


# echo $?

# proxy="http://sathis.kumar@students.iiit.ac.in:Learn1234@@proxy.iiit.ac.in:8080"
# export http_proxy=$proxy

# wget --proxy-user "sathis.kumar" --proxy-password "Learn1234@"  https://vpn.iiit.ac.in/secure/vpn_resources.tar.gz

# wget –no-check-certificate https://vpn.iiit.ac.in/secure/vpn_resources.tar.gz

# sudo vi /etc/wgetrc/

#/////////////////////////////////////////////////////////////////////////////////////////



#working code
#wget https://vpn.iiit.ac.in/secure/vpn_resources.tar.gz --user=sathis.kumar@students.iiit.ac.in --password=Learn1234@

# tar xvzf vpn_resources.tar.gz

# sudo apt-get install openvpn

# sudo -H gnome-terminal

# cd /etc/openvpn


# ca.crt', `all.iiit.ac.in.crt', `all.iiit.ac.in.key' and `linux_client.conf'

# sudo -H gnome-terminal

# sudo cp ca.crt all.iiit.ac.in.crt all.iiit.ac.in.key linux_client.conf /etc/openvpn

openvpn --config linux_client.conf


