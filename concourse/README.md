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
$ fly --target tutorial sync
```

## run task

```
$ fly -t tutorial execute -c task.yml
$ fly -t tutorial e -c task.yml
$ fly -t tutorial e -c task.yml -i input-name=path
```

## set pipeline

```
$ fly -t tutorial set-pipeline -c pipeline.yml -p hello-world

$ fly -t tutorial unpause-pipeline -p hello-world
$ fly -t tutorial up -p hello-world

$ fly -t tutorial unpause-job --job hello-world/job-hello-world
```

