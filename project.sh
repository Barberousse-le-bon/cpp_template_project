#auth : HYOT lucas

#!/bin/bash

# create the project folder

read -p "Project name : " project_name
mkdir $project_name
cd $project_name

# git initialization

git init
git config user.name
git config user.email

# copy necessary files

cp /home/lucas/script/create_project/CMakeLists.txt .
cp /home/lucas/script/create_project/.gitignore .
#cp /home/lucas/script/create_project/main.cpp .

#get the mail and the name from git and date

name=$(git config user.name)
mail=$(git config user.email)
datetime=$(date +"%d/%m/%Y at %H:%M:%S")

#create the head of the main file


cat header.txt /home/lucas/script/create_project/main.cpp >> main.cpp
rm header.txt

# cmake

cmake -S . -B build  	# initialize the makefile
cmake --build build	# compile the project


# run the main.cpp to check if it works
./bin/app



# git commit


git add .
git commit -m "auto init"



# vs code


code .


