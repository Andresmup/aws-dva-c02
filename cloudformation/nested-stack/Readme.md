# NESTED STACKS

## Create a S3 Bucket for store templates
```sh
aws s3 mb s3://andresmup-nested-stack-storage
```

## Update cfn templates for EC2 and S3
```sh
aws s3 cp template-s3.yaml s3://andresmup-nested-stack-storage
aws s3 cp template-ec2.yaml s3://andresmup-nested-stack-storage
```
