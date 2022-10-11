# dshackle


## External Docs


### p2p Setup-Link:
```
https://purple-sea-cb0.notion.site/Provider-setup-instructions-8f49f0ec2ecc4e718c3c35c20889966a
```

### generate CA / self-signed Certs:
```
https://github.com/emeraldpay/dshackle/blob/master/docs/08-authentication.adoc
```

### Cli-Tools

p2p-tool:

```
https://github.com/p2p-org/dshackle/blob/master/dshackle-cli/README.md
```

grpcurl:


```
Install:
https://github.com/fullstorydev/grpcurl

Definitions:
https://github.com/emeraldpay/emerald-grpc
```

Usage:
```
grpcurl -import-path emerald-grpc/proto/ -proto blockchain.proto -d '{"type": 100}' SERVERIP:PORT emerald.Blockchain/SubscribeHead
grpcurl -import-path emerald-grpc/proto/ -proto blockchain.proto -d '{"type": 100}' COMMONNAME:PORT emerald.Blockchain/SubscribeHead
```


### Branches

traefik ssl-termination in its own branch.