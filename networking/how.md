 Networking

# LAN IP Networks (RFC 1918) - Reserved for private networks never routed directly to the public Internet (therefore available for use with NAT)
|Range         |Netmask    |Broadcast      | Host Address Range           |
 ---           | ---       | ---           | ---
|10.0.0.0/8    |255.0.0.0  |10.255.255.255 |10.0.0.1 to 10.255.255.254    |
|172.16.0.0/12 |255.240.0.0|172.31.255.255 |172.16.0.1 to 172.31.255.254  |
|192.168.0.0/16|255.255.0.0|192.168.255.255|192.168.0.1 to 192.168.255.254|

# Network Scanning
## Scan the local subnet
`sudo arp-scan -l`

## Full port scan of subnet
`nmap -sn <subnet>/24`
or
`nmap -sP <subnet>.*`

# SSH
## Log into remote - remote sshd must be running and allow password logins if it doesnt have your public key
`ssh <user>@<remote>`

## Copy public key to remote - allows passwordless ssh if remote sshd configured as such
`ssh-copy-id <user>@<remote>`

# Transferring Data
## Recursive rsync with remote
`rsync -aXP <source_path> <user>@<remote>:<dest_path>`

## Recursive rsync with remote (mirrored - deletes remote files not in source)
`rsync -aXP --delete <source_path> <user>@<remote>:<dest_path>`

