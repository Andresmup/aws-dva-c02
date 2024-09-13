#!/usr/bin/env bash

aws iam create-policy \
    --policy-name ECSBasicTaskPolicies \
    --policy-document '{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "ECSBasicTaskPolicies",
                "Effect": "Allow",
                "Action": [
                    "ssmmessages:CreateControlChannel",
                    "ssmmessages:CreateDataChannel",
                    "ssmmessages:OpenControlChannel",
                    "ssmmessages:OpenDataChannel"
                ],
                "Resource": "*"
            }
        ]
    }'

aws iam create-role \
    --role-name ECSBasicTaskRole \
    --assume-role-policy-document '{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "ECSTask",
                "Effect": "Allow",
                "Principal": {
                    "Service": "ecs-tasks.amazonaws.com"
                },
                "Action": "sts:AssumeRole"
            }
        ]
    }'

aws iam attach-role-policy \
    --role-name ECSBasicTaskRole \
    --policy-arn arn:aws:iam::604476232840:policy/ECSBasicTaskPolicies

aws iam attach-role-policy \
    --role-name ECSBasicTaskRole \
    --policy-arn arn:aws:iam::aws:policy/CloudWatchLogsFullAccess



aws iam create-policy \
    --policy-name ECSBasicExecutionPolicies \
    --policy-document '{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "ECSBasicExecutionPolicies",
                "Effect": "Allow",
                "Action": [
                    "ecr:GetAuthorizationToken",
                    "ecr:BatchCheckLayerAvailability",
                    "ecr:GetDownloadUrlForLayer",
                    "ecr:BatchGetImage",
                    "logs:CreateLogStream",
                    "logs:PutLogEvents"
                ],
                "Resource": "*"
            }
        ]
    }'

aws iam create-role \
    --role-name ECSBasicExecutionRole \
    --assume-role-policy-document '{
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "ECSTask",
                "Effect": "Allow",
                "Principal": {
                    "Service": "ecs-tasks.amazonaws.com"
                },
                "Action": "sts:AssumeRole"
            }
        ]
    }'

aws iam attach-role-policy \
    --role-name ECSBasicExecutionRole \
    --policy-arn arn:aws:iam::604476232840:policy/ECSBasicExecutionPolicies

aws iam attach-role-policy \
    --role-name ECSBasicExecutionRole \
    --policy-arn arn:aws:iam::aws:policy/CloudWatchLogsFullAccess
