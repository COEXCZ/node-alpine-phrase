# Phrase CLI Docker Image

> Lightweight Docker image based on node:12-alpine with basic [useful tools](https://github.com/COEXCZ/node-alpine#node-alpine-docker-image-with-basic-useful-tools) and [Phrase CLI](https://phrase.com/cli/)

## Examples

### Bitbucket Pipelines CI

- Create `bitbucket-pipelines.yml`

```yml
image: coexcz/node-alpine-phrase

pipelines:
  branches:
    master:
    - step:
        script:
          - phrase --help
```

More examples on [Phrase CLI readme](https://github.com/phrase/phrase-cli/blob/master/README.md)

## Docker hub

Can be pulled from Docker Hub: [coexcz/node-alpine-phrase](https://hub.docker.com/repository/docker/coexcz/node-alpine-phrase)

```docker
docker pull coexcz/node-alpine-phrase
```

## Development

### Release

#### Automatically

```shell
yarn release:patch
# yarn release:minor
# yarn release:major
```

New version will be released, tagged and pushed into Docker hub with current tag + `latest` tag


#### Manually

```docker
docker build --no-cache --pull -t node-alpine-phrase:v1.x.x .
docker tag node-alpine-phrase:v1.x.x coexcz/node-alpine-phrase:v1.x.x
docker push coexcz/node-alpine-phrase:v1.x.x
```
