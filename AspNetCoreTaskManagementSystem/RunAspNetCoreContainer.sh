#!/bin/bash

# Check if the container exists
if docker ps -a --format '{{.Names}}' | grep -Eq "^AspDotNetTaskManagementSystem\$"; then
    echo "Container exists. Starting it..."
    docker start AspDotNetTaskManagementSystem
else
    echo "Container does not exist. Running it..."
    docker run --name AspDotNetTaskManagementSystem -v /home/incloud/MasterThesis/TaskManagementSystem/AspNetCoreTaskManagementSystem/data:/data -p 80:80 taskmanagementsystem
fi
