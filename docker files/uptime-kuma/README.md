# Uptime Kuma

<div align="center" width="100%">
    <img src="https://github.com/louislam/uptime-kuma/blob/master/public/icon.svg" width="128" alt="" />
</div>

## Simple uptime monitoring docker container

The provided docker-compose file is intended to set uptime uptime-kuma behind Nginx Reverse Proxy Manager docker container.

**Gotcha:** The proxy host within Nginx Reverse Proxy Manager must have the Websockets optional enabled.

---

## Rocketchat Integration ##

- Create the integration within Rocketchat according to the Rocketchat fields.
- The Rocketchat user must be created before creating the integration
- With Uptime-Kuma the Channel is listed by name (exclude the # which is required with Rocketchat integration)
- Once the integration is created **ENSURE IT IS ENABLED** (it is not by default).
- Copy the Webhook URL from the integration and paste into the uptime-kuma web integration hook url

---

## Self-signed certificates ##

By default uptime-kuma will not send a notification to a service (ie Rocketchat) with a self-signed certificate.  The following environment variable within the docker-compose leverages a node.js system environment variable which will add a CA to the trusted ones.

```yaml
 environment:
      - NODE_EXTRA_CA_CERTS=/certs/fullchain.crt
```

The CA Certificate must be in PEM format.  If there is and Intermediate and a CA both must be combined into one certificate.  If the self-signed certificate is only a CA without an intermediate than this is all thats needs to be presented into the docker container.  
