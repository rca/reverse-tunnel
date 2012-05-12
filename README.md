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
