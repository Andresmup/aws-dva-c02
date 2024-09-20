# PACKAGE ZIP LAMBDA FUNCTION

## Make bucket

```sh
aws s3 mb s3://dva-c02-andresmup-sam-lambda-test-bucket
```

## Start docker

```sh
sudo systemctl start docker
```


## Execute
```sh
aws ecr create-repository --repository-name sam-container-images --image-tag-mutability IMMUTABLE --image-scanning-configuration scanOnPush=true
```

```sh
sam build --template-file template.yaml --base-dir /code
```

```sh
sam package --s3-prefix "container-py"
```

```sh
sam deploy --stack-name "container-lambda-py" --capabilities "CAPABILITY_IAM"
```

```sh
sam delete --stack-name "container-lambda-py"
```