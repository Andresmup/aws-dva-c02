import boto3
from botocore.exceptions import ClientError

sqs = boto3.client("sqs")

def send_message(sqs, queue, message_body, message_attributes=None):
    if not message_attributes:
        message_attributes = {}

    try:
        response = sqs.send_message(
            QueueUrl=queue,
            MessageBody=message_body,
            MessageAttributes=message_attributes
        )
    except ClientError as error:
        print(f"Send message failed: {message_body}")
        raise error
    else:
        return response

queue_url = "https://sqs.us-east-1.amazonaws.com/604476232840/sqs-standard-demo"

attributes = {
    "first_name": {
      "DataType": "String",
      "StringValue": "Andres"
    },
    "last_name": {
      "DataType": "String",
      "StringValue": "Muñoz"
    },
    "age": {
      "DataType": "Number",
      "StringValue": "1"  # "Number" type requires the value to be a string
    }
}

send_message(sqs, queue_url, "Test", attributes)
