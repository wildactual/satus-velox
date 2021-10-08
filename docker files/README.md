**command usage example:** `docker-compose -f gostatic_compose.yml up -d`

---
**Docker single line commands**

- `docker run -d -p 80:8043 -v path/to/website:/srv/http --restart unless-stopped --name goStatic pierrezemb/gostatic`
- `docker run -d -p 8000:8000 -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=<password>" --restart unless-stopped --name splunk splunk/splunk:latest`