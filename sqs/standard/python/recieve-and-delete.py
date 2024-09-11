import boto3
from botocore.exceptions import ClientError

sqs = boto3.client("sqs")

def receive_messages(sqs, queue, max_messages=10, wait_time=0):
    try:
        response = sqs.receive_message(
            QueueUrl=queue,
            MaxNumberOfMessages=max_messages,  # Number of messages to pull (up to 10)
            WaitTimeSeconds=wait_time,         # Long polling (0 by default, up to 20 seconds)
            MessageAttributeNames=['All']      # Retrieve all message attributes
        )
    except ClientError as error:
        print(f"Receive message failed: {error}")
        raise error

    messages = response.get('Messages', [])
    return messages

queue_url = "https://sqs.us-east-1.amazonaws.com/604476232840/sqs-standard-demo"

messages = receive_messages(sqs, queue_url)

if messages:
    for message in messages:
        print(f"Message ID: {message['MessageId']}")
        print(f"Body: {message['Body']}")
        print(f"Attributes: {message.get('MessageAttributes', 'No attributes')}")
        
        # To delete the message after processing:
        sqs.delete_message(
            QueueUrl=queue_url,
            ReceiptHandle=message['ReceiptHandle']
        )
        print(f"Message {message['MessageId']} deleted from the queue.")
else:
    print("No messages found.")
