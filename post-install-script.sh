#!/bin/bash
### export PATH ###
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
echo "$PATH"
chmod 775 -R /etc/ssh
chmod 775 -R /etc/ssh/sshd_config
/usr/bin/sed -i 's/#\?\(PermitRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config
/usr/bin/sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config
/usr/bin/sed -i 's/#\?\(PermitEmptyPasswords\s*\).*$/\1 no/' /etc/ssh/sshd_config
chmod 755 -R /etc/ssh
chmod 600 -R /etc/sshd_config
service sshd restart