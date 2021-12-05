# Dashmachine Settings Configuration

**Change Settings to allow unauthenticated home access**

```yml
[Settings]
theme = dark
accent = orange
background = random
roles = admin,user,public_user
home_access_groups = all
settings_access_groups = admin_only
custom_app_title = Dashmachine
sidebar_default = no_sidebar
tags_expanded = True

[admin]
role = admin
password = 
confirm_password = 

[all]
roles = admin, user, public_user
```

**Home access groups is the key configuration change.**
