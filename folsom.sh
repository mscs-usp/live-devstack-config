apt-get update
apt-get install git

git clone https://github.com/mscs-usp/openstack-folsom-config.git
cp -av openstack-folsom-config/interfaces /etc/network/interfaces

git clone https://github.com/openstack-dev/devstack.git
git checkout stable/folsom