all: install

.PHONY: install
install:
	install -m 0755 reverse_tunnel /usr/local/bin/reverse_tunnel
	install -m 0644 reverse_tunnel.conf /etc/init/reverse_tunnel.conf
	install -m 0644 reverse_tunnel_test /etc/cron.d/reverse_tunnel_test

