#!/bin/bash
   sudo mv /home/ubuntu/Copycode/.idea /home/ubuntu/new_chatapp
   sudo mv /home/ubuntu/Copycode/.github /home/ubuntu/new_chatapp
   sudo mv /home/ubuntu/Copycode/appspec.yml /home/ubuntu/new_chatapp
   sudo mv /home/ubuntu/Copycode/scripts /home/ubuntu/new_chatapp
   if [ -d /home/ubuntu/Copycode/fundoo ]; then
   sudo rm -rf /home/ubuntu/Copycode/fundoo
fi
if [ -f /home/ubuntu/Copycode/requirements.txt ]; then
    sudo rm -rf /home/ubuntu/Copycode/requirements.txt
fi   
