## Create Log Group

```sh
aws logs create-log-group --log-group-name ecs-ec2-fargate
```
## Create our Task Def

```sh
aws ecs register-task-definition --cli-input-json file://task-definition.json
```
## Deploy Container

```sh
aws ecs create-service --cli-input-json file://service.json
```
