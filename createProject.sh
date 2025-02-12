
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

cp /home/lucas/script/createProject/CMakeLists.txt .
cp /home/lucas/script/createProject/.gitignore .
cp /home/lucas/script/createProject/main.cpp .

#get the mail and the name from git

name=$(git config user.name)
mail=$(git config user.mail)


#create the head of the main file

echo "/* Auth : " $name >> header.txt
echo $name >> header.txt
echo  >> header.txt
echo "Mail : " >> header.txt
echo $mail >> header.txt
echo  >> header.txt
date >> header.txt
echo "*/" >> header.txt

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


