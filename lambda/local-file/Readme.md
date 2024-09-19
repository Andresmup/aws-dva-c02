# DEPLOY LAMBDA FUNCTION FROM LOCAL .PY CODE

## Make bucket

```sh
aws s3 mb s3://dva-c02-andresmup-sam-lambda-test-bucket
```

## Start docker

```sh
sudo systemctl start docker
```
## SAM CONFIG

#https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-config.html


### Example estructure

```sh
sam-app
├── README.md
├── __init__.py
├── events
├── hello_world
├── samconfig.toml
├── template.yaml
└── tests
```
## Execute

```sh
sam build --template-file template.yaml
```

```sh
cfn-lint template.yml
```

```sh
sam validate --lint
```

```sh
sam local invoke "LocalFileLambda" --event test-event.json
```
```sh
sam deploy --stack-name "local-file-lambda-py" --capabilities "CAPABILITY_IAM"
```

```sh
sam delete --stack-name "local-file-lambda-py"
```