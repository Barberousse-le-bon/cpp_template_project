#!/bin/bash
#auth : HYOT lucas

if [ "$1" = "--create" ];
then
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

    #get the mail and the name from git
    name=$(git config user.name)
    mail=$(git config user.email)

    #create the head of the main file
    source /home/lucas/script/create_project/header.sh -c "$name" "$mail"

    #create the cpp file
    cat header.txt /home/lucas/script/create_project/main.cpp >> main.cpp
    source /home/lucas/script/create_project//header.sh -d

    # cmake
    cmake -S . -B build  	# initialize the makefile
    cmake --build build	    # compile the project


    # run the main.cpp to check if it works
    ./bin/app

    # git commit
    git add .
    git commit -m "auto init"



    # vs code
    code .

elif [ "$1" = "--class" ];
then
    read -p "Class name : " class_name
    class_name_capitalized=$(echo "$class_name" | sed 's/^./\U&/')


    mkdir $class_name_capitalized
    cd $class_name_capitalized


    #get the mail and the name from git
    name=$(git config user.name)
    mail=$(git config user.email)

    #create the head of the main file
    source /home/lucas/script/create_project/header.sh -c "$name" "$mail"
    cat header.txt /home/lucas/script/create_project/Class.h >> $class_name_capitalized.h
    cat header.txt /home/lucas/script/create_project/Class.cpp >> $class_name_capitalized.cpp

    source /home/lucas/script/create_project//header.sh -d

    sed -i "s/Class/$class_name_capitalized/g" $class_name_capitalized.cpp 
    sed -i "s/Class/$class_name_capitalized/g" $class_name_capitalized.h 
    
else
    echo "usage :"
    echo "      --create : to create a new project"
    echo "      --class : to create a class"
fi