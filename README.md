# Trafik reverse proxy for local HTTPS

## What is this?

An reverse proxy that enables HTTPS for local docker projects

## How to install

```bash
cd && git clone git@github.com:SBKubric/reverse_proxy.git && cd reverse_proxy
mv reverse_proxy.service ../.config/systemd/user/
systemctl --user enable reverse_proxy.service
```
