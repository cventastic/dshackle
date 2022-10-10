# dshackle


# For ssl-termination with traefik (with_traefik):

1) need to execute prepare.sh script to generate certificates:
```
cd traefik/
bash prepare.sh
```

2) need an with_traefik/.env-File in the repo, with following entries:
```
MAIL=
DOMAIN=
```
MAIL => the email address letsencrypt should contact about certificate changes
DOMAIN => the domain pointing to the server


# For ssl-termination with dshackle (without_traefik):

1) need to execute prepare.sh script to generate certificates:
```
cd without_traefik/
bash prepare.sh
```


## External Docs

# Setup-Link:
```
https://purple-sea-cb0.notion.site/Provider-setup-instructions-8f49f0ec2ecc4e718c3c35c20889966a
```

# Cli-Tool
```
https://github.com/p2p-org/dshackle/blob/master/dshackle-cli/README.md
```