# thehive

<div>
  <p align="center">
    <img src="https://raw.githubusercontent.com/TheHive-Project/TheHive/master/images/thehive-logo.png" width="400" />
    <img src="http://www.scylladb.com/wp-content/uploads/mascot_medium.png" width="100" />
  </p>
</div>

## Repository of docker-compose files needed to build TheHive with Scylladb.
- The inital account is `admin`/`secret` -- change first thing
- Starting with TheHive4 user logins are by email/fqdn, ie `user1@local.net`

## Permissions

This `docker-compose` will start TheHive4 w/ Scylladb and Nginx as the proxy.  The docker compose stanza `user: "root"` sets the permissions to the directories for TheHive to start.

If there is a permission error, most likely evidenced in the logs by ...
```log
"The application secret has not been set, and we are in prod mode. Your application is not secure." errors but i see the command: "--no-config --no-config-secret"
```
Manually change the permission to the required directories of `./vol/thehive/data` and `./vol/thehive/index` by stopping the container after first run and then change the permissions.

```bash
sudo chown -R 1000:1000 ./vol/thehive/data
sudo chown -R 1000:1000 ./vol/thehive/index
```

After changing the permissions restart TheHive and ensure that the schema gets created by monitoring the logs - `docker logs thehive`

## Creating a self-signed certificate for Nginx

These certificates need to be in `./vol/ssl`

```bash
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt
```
