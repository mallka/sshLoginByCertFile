#!/usr/bin/env bash
 
mkdir -p /root/.ssh && chmod 600 /root/.ssh && echo "换成你的公钥内容" > /root/.ssh/authorized_keys && chmod 700 /root/.ssh/authorized_keys
 
 
sed -i 's:#AuthorizedKeysFile:AuthorizedKeysFile:'  /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication/PasswordAuthentication/'  /etc/ssh/sshd_config
sed -i 's/#RSAAuthentication yes/RSAAuthentication yes/'  /etc/ssh/sshd_config
sed -i 's/#StrictModes no/StrictModes no/'  /etc/ssh/sshd_config
systemctl restart sshd.service
