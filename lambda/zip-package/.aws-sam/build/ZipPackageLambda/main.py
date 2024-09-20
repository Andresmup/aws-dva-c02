def handler(event, context):
    message = 'Name: {}, Last name: {}!'.format(event['first_name'], event['last_name'])  
    print("This is the event")
    print(event)
    print("-------------------")
    print("This is the context")
    print(context)
    return { 
        'message' : message
    }