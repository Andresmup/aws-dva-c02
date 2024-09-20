# LAMBDA DOCKER CONTAINER

## Make bucket

```sh
aws s3 mb s3://dva-c02-andresmup-sam-lambda-test-bucket
```

## Start docker

```sh
sudo systemctl start docker
```
## SAM CONFIG

### Execute

```sh
sam build --template-file template.yaml
```

```sh
sam package --s3-prefix "zip-package-py"
```

```sh
sam deploy --stack-name "zip-package-lambda-py" --capabilities "CAPABILITY_IAM"
```

```sh
sam delete --stack-name "zip-package-lambda-py"
```