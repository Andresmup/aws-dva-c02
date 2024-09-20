# LAMBDA FUNCTION USING LAYERS

## Make bucket

```sh
aws s3 mb s3://dva-c02-andresmup-sam-lambda-test-bucket
```


## Folder for packages

```sh
mkdir python
```

## Install require libreries in specific folder

```sh
pip install -r requirements.txt -t python/
```

## Generate zip from packages installed

```sh
zip -r python-layers.zip python/
```

## Upload zip to S3 for layers

```sh
aws s3 cp python-layers.zip s3://dva-c02-andresmup-sam-lambda-test-bucket/layers/python.zip
```

## Publish layers

```sh
aws lambda publish-layer-version --layer-name python-layers --description "Faker Python layer" --license-info "MIT" --content S3Bucket=dva-c02-andresmup-sam-lambda-test-bucket,S3Key=layers/python.zip --compatible-runtimes python3.12
```

## Check layers

```sh
aws lambda list-layers
```
## SAM Execute

```sh
sam build --template-file template.yaml
```

```sh
sam deploy --stack-name "layers-lambda-py" --capabilities "CAPABILITY_IAM"
```

```sh
sam delete --stack-name "layers-lambda-py"
```