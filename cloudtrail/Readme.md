# CREATE TRAIL AND STORE DATA IN S3

## Create a bucket for cloudtrail logs
```sh
aws s3 mb s3://cloudTrailBucketDemoAndresmup
```

## Attach bucket policy to allow cloud trail put data
```sh
aws s3api put-bucket-policy --bucket cloudTrailBucketDemoAndresmup --policy file://bucket-policy.json
```

## Create Trail
```sh
aws cloudtrail create-trail \
--name DemoTrail \
--s3-bucket-name cloudTrailBucketDemoAndresmup \
--region us-east-1
```

## Start Logging
```sh
aws cloudtrail start-logging --name DemoTrail
```