#!/bin/bash

<<task
Deploy a Django app
and handle the code for errors
task

code_clone(){
	echo "cloning the django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirments(){
	echo "Installing dependecies"
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
	docker run -d -p 8000:8000 notes-app:latest
}

echo "***************--Deploymest startedd--*****************"

if ! code_clone; then
	echo "The code directory already exists."
	cd django-notes-app
fi

if ! install_requirments; then
	echo "Installation failed"
	exit 1
fi

if ! required_restarts; then
	echo "System Fault identified"
	exit 1
fi
deploy

echo "------------------Deployment Ended-----------------------"
