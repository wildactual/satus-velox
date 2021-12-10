# Rocketchat

## Mongo DB Init Replica

- This will start a service and wait for Mongo DB to be ready and initialized
- It is required on first run, but the stanzas can be removed from the docker-compose once the Mongo DB has been initialized (after first run)

## Required -- Gotchas

- The URL used to access rocketchat container must match the `ROOT_URL` provided in the docker-compose
  - This includes http vs https
  - If the `ROOT_URL` doesn't matter rocketchat will not completely load

- The Setup is skipped in this docker-compose file, because sometimes is will hang at the setup step

  - Comment out `OVERWRITE_SETTING_Show_Setup_Wizard: 'completed'` in order to use the setup wizard.

- The inital login for new users will require a 2FA code to complete the login

  - Without a functioning email server use the admin account to disable 2FA

    - Administration -> Accounts -> Two Factor Authentication --> Disable
