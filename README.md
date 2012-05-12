Reverse Tunnel
==============

Creates a reverse SSH tunnel to connect to a machine via proxy.

This is a great way to access a machine behind a NAT or firewall when there is
an available intermediate machine publicly accessible.

Installation
------------

Run the Makefile, which installs the script in ```/usr/local/bin/reverse_tunnel```, an Upstart init script in ```/etc/init/reverse_tunnel.conf``` and a cron job in ```/etc/cron.d/reverse_tunnel_test```.

By default, the cron runs every 10 minutes to test and make sure the tunnel is
up and running.

Configuration
-------------

Create the file ```/etc/default/reverse_tunnel``` with at least the setting:

```
TUNNEL_HOST=sprocketlight.com
```

The script by default assumes there will be a user named ```tunnel``` with a non-passworded SSH key at ```/home/tunnel/.ssh/id_rsa```.  It will connect to the remote machine as the user ```tunnel``` and will create the tunnel on port 22023.  These settings can can also be changed in the configuration:

```
IDENTITY=${IDENTITY:-/home/someuser/.ssh/no_pw}
TUNNEL_USER=someuser
SSH_PORT=${SSH_PORT:-22023}
```
