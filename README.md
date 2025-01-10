## discourse-disable-pwa-install-request

This simple Discourse plugin strips out the PWA install request which both confused and annoyed a number of our forum users. 

## Discourse Layout Changes

### templates/application.hbs

- Strips out the PWA code in the application

## Changes compared to source repository

- the code is adjusted to remove `<PwaInstallBanner />` string from application template