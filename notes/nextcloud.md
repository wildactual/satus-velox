# Nextcloud #

## Snap Commands ##

**Reset a user's password**  
`sudo nextcloud.occ user:resetpassword admin`  

**Enable HTTPS with self-signed certificate**  
`sudo nextcloud.enable-https self-signed`

**Enable HTTPS with custom certificates (must be PEM format)**  
`sudo nextcloud.enable-https custom fqdn.pem fqdn.key.pem ca.pem`

**Changed default files to empty directory**
`sudo nextcloud.occ config:system:set skeletondirectory -value=""`
