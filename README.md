# Traefik reverse proxy for local HTTPS

## What is this?

A global reverse proxy configuration that enables HTTPS for local docker projects

## How to install

### Installling service
```bash
cd && git clone git@github.com:SBKubric/reverse_proxy.git && cd reverse_proxy
mv reverse_proxy.service ../.config/systemd/user/
systemctl --user enable reverse_proxy.service
```

### Generating certificates
mkcert will you need
Put generated certs into ~/ssl

### Set domains
Add domains into /etc/hosts

Voila!
