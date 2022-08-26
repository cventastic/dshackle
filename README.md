# dshackle

1) need to execute prepare.sh script to generate certificates:
```
bash prepare.sh
```

2) need an .env-File in the repo, with following entries:
```
MAIL=
DOMAIN=
```
MAIL => the email address letsencrypt should contact about certificate changes
DOMAIN => the domain pointing to the server