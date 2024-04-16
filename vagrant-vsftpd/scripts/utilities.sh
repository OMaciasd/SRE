# utilities.sh
configure_ufw() {
    sudo ufw default deny incoming
    sudo ufw route allow proto tcp from any to any port 21 to 192.168.50.2 port 21
    sudo ufw --force enable
    sudo ufw allow 21/tcp
    sudo ufw reload
    sudo iptables-save > /etc/iptables/rules.v4
    sudo ufw status verbose
}

configure_vsftpd() {
    sed -i 's/#write_enable=YES/write_enable=YES/' /etc/vsftpd.conf
    sed -i 's/#local_umask=022/local_umask=022/' /etc/vsftpd.conf
    sed -i 's/listen=NO/listen=YES/' /etc/vsftpd.conf
    sed -i 's/listen_ipv6=YES/listen_ipv6=NO/' /etc/vsftpd.conf
    sudo adduser --disabled-password --gecos "" christian
    echo "christian:123" | sudo chpasswd
    sudo service vsftpd restart
}

system_cleanup() {
    sudo apt-get clean
    sudo apt-get autoclean
    sudo apt-get upgrade -y
}
