# PREVENT A STACK FROM BE UPDATED

## AWS cli command
```sh
aws cloudformation set-stack-policy 
    --stack-name prevent-stack-update \
    --stack-policy-body '{"Statement" : [{
        "Effect" : "Deny",
        "Action" : "Update:*",
        "Principal": "*",
        "Resource" : "LogicalResourceId/MyEC2Instance"
        }]}'
```