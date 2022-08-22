#!/bin 


# Create Basic Configuration
ecs-cli configure --cluster ${CLUSTER_NAME} --region ${CLUSTER_REGION} --default-launch-type FARGATE

# Create Task Definintion
ecs-cli compose create --create-log-groups --launch-type FARGATE

# Create Service
ecs-cli compose service create -role ${ROLE} --target-groups ${TARGET_GROUP} --region ${REGION} --cluster ${CLUSTER} --create-log-groups --tags ${TAGS}