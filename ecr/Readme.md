## Install requirements

```sh
cd app
pip install -r requirements.txt
```

## Run without a container

```sh
python app.py
```

This should start the app on port `5000`

## Test the endpoint for local app

```sh
curl localhost:5000/api/hello
curl localhost:5000/api/hello?name=Andrew+Brown
```

## Build Image

```sh
docker build -t  app ./app
```

## Run the Container

```sh
docker run --rm -p 4567:4567 -it app
```

## Test the endpoint for local container app

```sh
curl localhost:4567/api/hello
curl localhost:4567/api/hello?name=Andrew+Brown
```

## Create ECR Repos

```sh
aws ecr create-repository --repository-name python --image-tag-mutability IMMUTABLE
```

```sh
aws ecr create-repository --repository-name app --image-tag-mutability MUTABLE
```
## Login to ECR

`Maybe be needed`

```sh
gpg --gen-key
pass init
```

```sh
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 604476232840.dkr.ecr.us-east-1.amazonaws.com
```

 ### Pull, Tag and Push Python Image


```sh
docker pull python:3.13.0a6-slim-bookworm
docker tag python:3.13.0a6-slim-bookworm 604476232840.dkr.ecr.us-east-1.amazonaws.com/python:3.13.0a6-slim-bookworm
docker push 604476232840.dkr.ecr.us-east-1.amazonaws.com/python:3.13.0a6-slim-bookworm
```

### Build, tag and push app container


```sh
docker build -t  app .
docker docker tag app:latest 604476232840.dkr.ecr.us-east-1.amazonaws.com/app:latest
docker push docker push 604476232840.dkr.ecr.us-east-1.amazonaws.com/app:latest