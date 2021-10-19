# Netplan Configuration - Examples #

## Netplan Commandline ##
**Apply configuration:** `netplan apply` 

## Basic Static IP Address ##
```yml
network:
  ethernets:
    ens160:
      dhcp4: false
      addresses: [ 192.168.0.69/24 ]
      gateway4: 192.168.0.1
      nameservers:
        addresses: [ 9.9.9.9,8.8.8.8 ]
  version: 2
```
