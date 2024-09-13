## Get the ECS EC2 Optimized AMI

https://docs.aws.amazon.com/AmazonECS/latest/developerguide/retrieve-ecs-optimized_AMI.html

```sh
aws ssm get-parameters --names /aws/service/ecs/optimized-ami/amazon-linux-2023/recommended --region us-east-1
```

## Get VPC ID

```sh
aws ec2 describe-vpcs
```

## Get Subnets IDs

```sh
aws ec2 describe-subnets
```

## Create Log Group
```sh
aws logs create-log-group --log-group-name ecs-ec2-basic
```
## Create our Task Def
```sh
aws ecs register-task-definition --cli-input-json file://task-definition.json
```
## Deploy Container
```sh
aws ecs create-service --cli-input-json file://service.json
```