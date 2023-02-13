# secure-ssh.sh
# Author: tbrogan25
# Creates a new SSH user using $1 parameter
# Adds a public key from the local repo or curled from the remote repo
# Removes roots ability to SSH in
echo "TEST CODE"
useradd -m -d /home/$1 -s /bin/bash $1
mkdir /home/$1/.ssh
cp /home/timothy/brogan-tech-journal/SYS-265/linux/public-keys/id_rsa.pub /home/$1/.ssh/authorized_keys
chmod 700 /home/$1/.ssh
chmod 600 /home/$1/.ssh/authorized_keys
chown -R $1:$1 /home/$1/.ssh
