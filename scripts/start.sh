#!/bin/bash
  
  sudo docker rm -f frontend backend mydb
  sudo docker rmi -f  backend_image frontend_image mysql_db base_image
  
  cd /home/ubuntu/new_chatapp1
  sudo docker build -t base_image .
  sudo docker-compose up --build -d 
