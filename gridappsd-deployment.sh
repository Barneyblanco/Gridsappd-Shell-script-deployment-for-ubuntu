#!/bin/bash

echo "installing git"

sudo apt install git

sudo apt install python3.8

echo "installing python 3.8"

sudo apt install python3.8

##Go to the browser within the ubuntu VM and run (https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)

##Download Miniconda and ensure it is in the download folder within the ubuntu Machine

##cd into downloads 

cd Downloads

echo "installing miniconda3"

bash Miniconda3-latest-Linux-x86_64.sh

#leaving download folder

cd  ../

echo "installing pip"

sudo apt install python3-pip

echo "installing jupyterlab"

pip install jupyterlab

echo "cloning gridappsd-python folder"

git clone https://github.com/GRIDAPPSD/gridappsd-python.git
 
cd gridappsd-python

echo "installing python dependencies" 

pip install -r requirements.txt

pip install .

cd ../

echo "cloning gridappsd-hackathon from github"

git clone https://github.com/GRIDAPPSD/gridappsd-hackathon

cd ../

echo "cloning gridappsd-docker from github"

git clone https://github.com/GRIDAPPSD/gridappsd-docker

cd gridappsd-docker

echo "installing docker"

./docker_install_ubuntu.sh

echo "pulling and starting all microservices (docker images)"

./run.sh -t releases_2020.09.0

echo "Running final installation and starting the application"

./run-gridappsd.sh

echo "APPLICATION STARTED ON PORT 8080"


