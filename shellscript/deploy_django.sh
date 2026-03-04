#!/bin/bash

<<task


Deploy a django app
and handle the code for errors

task

code_clone(){
        echo "Cloning the Django app..."
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
        echo "Installing Dependencies"
        sudo apt-get install docker.io nginx -y
}
required_restarts(){
        sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
        sudo systemctl restart docker
}

deploy(){


        docker build -t notes-app .
        docker rm -f notes-app-container 2>/dev/null
        docker run -d -p 8000:8000 --name notes-app-container notes-app:latest

}


echo "*********** DEPLOYMENT STARTED ************"

if ! code_clone; then
        echo "The coode directory already exists"
        cd django-notes-app
fi

if ! install_requirements; then
        echo "Installation failed"
        exit 1
fi

if ! required_restarts; then
        echo "System fault identified"
        exit 1
fi

deploy

echo "*********** DEPLOYMENT DONE ************"

