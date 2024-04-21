
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

text_before_date="/\*" #AUTH : $name"\nMAIL : $mail"\nDATE : "
text_after_date="*/"


#echo -e $text_before_date
#add the head to main

#./../../entete/entete2.sh $text_before_date $text_after_date main.cpp

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


