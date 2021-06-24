#!/bin/bash
   sudo rm -rf /home/ubuntu/new_chatapp1/.idea
   sudo rm -rf /home/ubuntu/new_chatapp1/.github
   sudo rm -rf /home/ubuntu/new_chatapp1/appspec.yml
   sudo rm -rf /home/ubuntu/new_chatapp1/scripts
   
if [ -d /home/ubuntu/new_chatapp1/fundoo ]; then
   sudo rm -rf /home/ubuntu/new_chatapp1/fundoo
fi
if [ -f /home/ubuntu/new_chatapp1/requirements.txt ]; then
    sudo rm -rf /home/ubuntu/new_chatapp1/requirements.txt
fi

if [ -f /home/ubuntu/new_chatapp1/Frontend ]; then
    sudo rm -rf /home/ubuntu/new_chatapp1/Frontend
fi

if [ -f /home/ubuntu/new_chatapp1/Database ]; then
sudo rm -rf /home/ubuntu/new_chatapp1/Database
fi
if [ -f /home/ubuntu/new_chatapp1/sonar-project.properties ]; then
sudo rm -rf /home/ubuntu/new_chatapp1/sonar-project.properties
fi
if [ -f /home/ubuntu/new_chatapp1/Dockerfile ]; then
sudo rm -rf /home/ubuntu/new_chatapp1/Dockerfile
fi
if [ -f /home/ubuntu/new_chatapp1/docker-compose.yml ]; then
sudo rm -rf /home/ubuntu/new_chatapp1/docker-compose.yml
fi


