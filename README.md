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

#### p2p-tool:

```
https://github.com/p2p-org/dshackle/blob/master/dshackle-cli/README.md
```

#### grpcurl:


```
Install:
https://github.com/fullstorydev/grpcurl

Definitions:
https://github.com/emeraldpay/emerald-grpc
```

#### Usage:

##### Subscribe (omit -plaintext for non-TLS)
```
grpcurl -import-path emerald-grpc/proto/ -proto blockchain.proto -d '{"type": 100}' $IP:$PORT emerald.Blockchain/SubscribeHead
```

##### NativeCall (omit -plaintext for non-TLS) 
<br />

method: eth_getTransactionByHash 

generate base64 payload:

```
echo -n '["0xbb32d042bb99b1ac16f7a97521acad920a0875e48c830c23e98867a1233781bc"]' | base64 -w 0
```

request:
```
grpcurl -import-path emerald-grpc/proto/ -proto blockchain.proto -d '{"chain": 100, "items": {"method":"eth_getTransactionByHash","payload":"WyIweGJiMzJkMDQyYmI5OWIxYWMxNmY3YTk3NTIxYWNhZDkyMGEwODc1ZTQ4YzgzMGMyM2U5ODg2N2ExMjMzNzgxYmMiXQ=="}}' $IP:$PORT emerald.Blockchain/NativeCall
```
<br />

method: eth_getBlockByHash

generate base64 payload:
```
echo -n '["0xb9b92cf183fb3c091593fcdf1fe08995f705572b0fb56420c1ccb09fa6313450", true]' | base64 -w 0
```

request:
```
grpcurl -import-path emerald-grpc/proto/ -proto blockchain.proto -d '{"chain": 100, "items": {"method":"eth_getBlockByHash","payload":"WyIweGI5YjkyY2YxODNmYjNjMDkxNTkzZmNkZjFmZTA4OTk1ZjcwNTU3MmIwZmI1NjQyMGMxY2NiMDlmYTYzMTM0NTAiLCB0cnVlXQ=="}}' $IP:$PORT emerald.Blockchain/NativeCall
```

<br />

### Branches

traefik ssl-termination in its own branch.