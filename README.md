# Project Automation Script

## Description
This script automates the creation and management of C++ projects and classes. It sets up a project structure, initializes Git, and configures necessary files such as `CMakeLists.txt` and `.gitignore`. Additionally, it allows for easy class creation.

**/!\ WORK IN PROGRESS** 

## Features
- **Create a new project** with Git initialization and CMake setup
- **Generate C++ class files** with proper formatting
- **Automatically insert headers** with author information
- **Compile and run the project** using CMake
- **Setup VS Code project settings**


## Installation
Make sure you have the required dependencies installed:

```bash
sudo apt update
sudo apt install -y git cmake code gcc
```

Clone the repository and make the script executable:

```bash
git clone https://github.com/Barberousse-le-bon/cpp_template_project.git
cd cpp_template_project
chmod +x project.sh header.sh main.cpp class.cpp
```

## Usage

### Create a new project
```bash
./project.sh --create
```
This command will:
- Ask for the project name
- Create a project directory
- Initialize Git
- Copy necessary files (`CMakeLists.txt`, `.gitignore`, `main.cpp`)
- Add a header to the main with user information
- Compile and run the project

### Create a new class
```bash
./project.sh --class
```
This command will:
- Ask for the class name
- Create class files (`.h` and `.cpp`)
- - Add headers to the class files with user information
- Replace template placeholders with the given class name

### Run the project 
```bash
./project.sh --run 
```
This command will:
- Compile the project 
- run the project 

## License
This project is open-source and available under the MIT License.

##  Contact
For questions or contributions, feel free to reach out via GitHub or email.

