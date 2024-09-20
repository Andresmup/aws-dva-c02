# Use AWS python base image
FROM public.ecr.aws/lambda/python:3.12

# Copy over main specific code
COPY code/main.py code/requirements.txt /var/task/

# Install requirements
RUN python3.12 -m pip install -r /var/task/requirements.txt

# Set the file main.py and the main handler as the lambda function.
CMD ["main.handler"]