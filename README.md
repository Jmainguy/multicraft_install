# multicraft_install
Ansible playbook for installing multicraft 1.8

## How To
This assumes you are Running either Centos 6.x or 7.x

1. edit the hosts file
  a. Change exmaple.com to the hostname or ip of your server
  b. Change mysql_root_password= to the password you want for mysql
  c. Change demon_pass= to password for multicraft daemon you want
  d. Change mc_key= to the actual key for your multicraft (Paid license)
2. Install ansible
  a. Run the following commands as root on your Centos server
    i. yum install epel-release
    ii. yum install ansible
3. Run ansible against hosts and playbook
  a. ansible-playbook -i hosts site.yml -k
    i. type password for root when prompted.
4. Finish install via browser
  a. Go to your servers hostname/ip in browser with url ending in /multicraft
    i. example.com/multicraft
  b. Fill in the details and hit next a bunch
5. Start multicraft daemon
  a. ssh into your server and run the following
    i. /home/minecraft/multicraft/bin/multicraft -v restart
6. Buy Jon a beer
  a. paypal address == billing@standouthost.com
