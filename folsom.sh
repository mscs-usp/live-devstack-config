sudo su
apt-get update
apt-get install sudo git

git clone https://github.com/mscs-usp/openstack-folsom-config.git
cp -av openstack-folsom-config/interfaces /etc/network/interfaces

groupadd stack
useradd -g stack -s /bin/bash -d /opt/stack -m stack
echo "stack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "openstack" | passwd stack --stdin

sudo su - stack
git clone https://github.com/openstack-dev/devstack.git
cd devstack
git checkout stable/folsom

git clone https://github.com/mscs-usp/openstack-folsom-config.git
cp -av openstack-folsom-config/localrc.controller localrc