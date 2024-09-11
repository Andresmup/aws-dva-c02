# AWS CLI COMMANDS

## Put item

```sh
aws dynamodb put-item --table-name dynamodb-basic-DynamoDBTable-D8L7L91BXZKN --item file://itemToPut.json
```

## Scan
```sh
aws dynamodb scan --table-name dynamodb-basic-DynamoDBTable-D8L7L91BXZKN
```

## Get item

```sh
aws dynamodb get-item --table-name dynamodb-basic-DynamoDBTable-D8L7L91BXZKN --key file://itemToGet.json
```

## Query
```sh
aws dynamodb query --table-name dynamodb-basic-DynamoDBTable-D8L7L91BXZKN --key-condition-expression "pk = :v1" --expression-attribute-values file://expression-attributes.json --return-consumed-capacity TOTAL
```