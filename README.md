[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/aws-multi-ecr-credentials)](https://artifacthub.io/packages/search?repo=aws-multi-ecr-credentials)

# Chart for using multi ECR repositories

## What has been changed?

1. Ability to use several ECR accounts

2. Cron scheduler has configurable parameter

3. Job container image has official amazon repository: amazon/aws-cli

## How to use?

See internal: [README.md](charts/aws-ecr-rotate-tokens/README.md)

## How to debug?
`kubectl get pods -A`

you should see the pod name like this:

`aws-ecr-rotate-tokens-1234567890-cron-1610110080-x265d`

then need to read the logs by the following command:

`kubectl logs aws-ecr-rotate-tokens-1234567890-cron-1610110080-x265d`

## Build helm package
```
helm package ./charts/aws-multi-ecr-credentials/ -d ./docs
helm repo index ./docs/
```
