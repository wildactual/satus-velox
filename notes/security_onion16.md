# Security Onion 16 Specific - depreciated

**Disable SID:** edit `/etc/nsm/pulledpork/disabled.conf`  

- `so-rule-update` - on the manager, then each distributed node  
- `so-nids-restart` - on the manager, then each distributed node
- Regular Expression (pcre) Snort Filtering: example `pcre:DynDNS`
  - `pcre:DYNAMIC_DNS Query` - no quotes, case sensitive

**Add Local Snort Rules:** edit `/etc/nsm/rules/local.rules`  

- must be a space before sid:# (after the semicolon)  
- verify snort version - `snort -V` - version 2 and version 3 use vastly different rules  

**Zeek Intel:** located `/opt/bro/share/zeek/intel/intel.dat`  

- add IPs, Domains, File Hashes to file - **tabbed delimited, no trailing spaces** - after changes run:  
- `so-rule-update` - on the manager, then each distributed node  
- `so-zeek-restart` - on the manager, then each distributed node  
- matches to entries in intel.dat logged in `/nsm/bro/logs/current/intel.log`  
- check for errors in `/nsm/bro/logs/current/reporter.log`

**BPF Filter:** `/etc/nsm/rules/bpf.conf`  

- symbolic from each interface to one `bpf.conf` - after changes:  
- `so-rule-update` - on the manager, then each distributed node  
- `so-nids-restart` - on the manager, then each distributed node  
- bpf filter example - `!(srchost xxx.xxx.xxx.xxx && dst port 80)`  
- `&&` - double ampersand - between each filter but not at the end

**Add Zeek Script:** (such as BZAR)  

- copy custom script to `/opt/zeek/share/zeek/policy`  
- edit `/opt/zeek/share/zeek/site/local.bro`  
- add `@load {custom script folder name}` - located in `/opt/zeek/share/zeek/policy/{custom script folder name}`  
- `so-rule-update` - on the manager, then each distributed node  
- `so-zeek-restart` - on the manager, then each distributed node
- verify changes on distributed nodes by checking `/opt/zeek/share/zeek/site/local.bro`

**Logstash tuning:**

- there should be 1 pipeline work per CPU socket
- if running in a VM and the CPU sockets were changed edit `/etc/logstash/logstash.yml`

**Snort Workers:**

- edit `sensor.conf` for each interface in the directory `/etc/nsm/{interface-name}`
- set `IDS_LB_PROCS = {#}` to set the number of workers

**Zeek - CPU Pining**

- edit `/opt/bro/etc/node.cfg` - for each interface name ie `[hostname-ens161]`
- `pin_cpus={core/socket number}` - for example - `pin_cpus=5,6,7,8,9`
- a 1 gig saturated link needs about 4 cores (~150-200Mb/s per core)
- `lb_procs={#}` -- this will assign the number of workers but not pin the workers to a specific cpu core
- pining a worker to a cpu core dedicates it to zeek and can improve performance
