## install fly CLI
download

```
$ sudo mkdir -p /usr/local/bin
$ sudo mv ~/Downloads/fly /usr/local/bin
# sudo chmod 0755 /usr/local/bin/fly
```

```
$ wget https://raw.githubusercontent.com/starkandwayne/concourse-tutorial/master/docker-compose.yml
$ docker-compose up -d
```

## target concourse

```
$ fly --target tutorial login --concourse-url http://127.0.0.1:8080

```