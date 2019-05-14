#!/bin/bash
[ ~] env|grep PATH
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
usr/bin/sed -i 's/#\?\(PermitRootLogin\s*\).*$/\1 no/' /etc/ssh/sshd_config
usr/bin/sed -i 's/#\?\(PasswordAuthentication\s*\).*$/\1 no/' /etc/ssh/sshd_config
usr/bin/sed -i 's/#\?\(PermitEmptyPasswords\s*\).*$/\1 no/' /etc/ssh/sshd_config
service sshd restart