# Deploy Containers

```sh
aws ecs create-service --cli-input-json file://service-1.json
aws ecs create-service --cli-input-json file://service-2.json
```

# ECS Exec

## Installing SM CLI for AWS CLI on Ubunutu

```sh
sudo yum install -y https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm
```

## Connect to Container Env

```sh
aws ecs execute-command \
--cluster ecs-fargate-scECSCluster \
--task d102a53e298643b4aa13bb227463115d \
--container app \
--interactive \
--command "/bin/sh"
```

## Check Hosts

```sh
cat /etc/hosts
```

## Test Public IP

curl 54.198.42.156:4567/api/hello?name=Andres+mup

## Test Service Connect Address 
curl http://app2.basic:4567/api/hello?name=Andres+mup

