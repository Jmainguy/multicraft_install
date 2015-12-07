# multicraft_install
Ansible playbook for installing multicraft 1.8

## How To
This assumes you are Running 7.x
This also assumes you want to install whmcs as well, if not, just remove that line from site.yml

1. Edit the hosts file
  1. Change exmaple.com to the hostname or ip of your server
  2. Change mysql_root_password= to the password you want for mysql
  3. Change demon_pass= to password for multicraft daemon you want
  4. Change mc_key= to the actual key for your multicraft (Paid license)
  3. Change whmcs_pass= to password for whmcs user you want
2. Install ansible
  1. Run the following commands as root on your Centos server
    1. ```yum install epel-release```
    2. ```yum install ansible```
3. Install ssh-keys
  1. ```ssh-keygent -t rsa```
    1. Hit enter a bunch
  2. cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
3. Run ansible against hosts and playbook
  1. ```ansible-playbook -i hosts site.yml```
4. Finish install via browser
  1. Go to your servers hostname/ip in browser with url ending in /multicraft
    1. example.com/multicraft
  2. Fill in the details and hit next a bunch
5. Start multicraft daemon
  1. ssh into your server and run the following
    1. ```/home/minecraft/multicraft/bin/multicraft -v restart```
6. Buy Jon a beer
  1. paypal address == billing@standouthost.com
