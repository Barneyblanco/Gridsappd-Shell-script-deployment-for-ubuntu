#!/bin/bash

Green = '\033[0;32m'

Yellow='\033[0;33m' 

Blue='\033[0;34m'

echo " ${Green} installing git"

sudo apt install git

sudo apt install python3.8

echo "${Green}installing python 3.8"

sudo apt install python3.8

##Go to the browser within the ubuntu VM and run (https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)

##Download Miniconda and ensure it is in the download folder within the ubuntu Machine

##cd into downloads 

cd Downloads

echo "installing miniconda3"

bash Miniconda3-latest-Linux-x86_64.sh

#leaving download folder

cd  ../

echo "${Green}installing pip"

sudo apt install python3-pip

echo "${Green}installing jupyterlab"

pip install jupyterlab

echo "${Green}cloning gridappsd-python folder"

git clone https://github.com/GRIDAPPSD/gridappsd-python.git
 
cd /GRIDAPPSD/gridappsd-python.git

echo "${Green}installing python dependencies" 

pip install -r requirements.txt

pip install .

echo "${Green}cloning gridappsd-docker from github"

git clone https://github.com/GRIDAPPSD/gridappsd-docker

cd gridappsd-docker

echo "${Green}installing docker"

./docker_install_ubuntu.sh

cd ../ 

echo "${Green}cloning gridappsd-hackathon from github"

git clone https://github.com/GRIDAPPSD/gridappsd-hackathon

cd gridappsd-docker

echo "${Green}pulling and starting all microservices (docker images)"

./run.sh -t releases_2020.09.0

echo "${Yellow}restarting docker service"

service docker restart

cd ../

echo "${Green}Running final installation and starting the application"

./run-gridappsd.sh

echo "${Yellow}Re-running the app"

./run-gridappsd.sh

echo "${Blue}APPLICATION STARTED ON PORT 8080"


