#!/bin/bash
# File structure
# . (project folder)
# ├── build_run.sh
# ├── main.cpp
# ├── Source
# │   ├── file1.cpp
# │   └── file1.h
# └── README.md


# Config
PROJECT_NAME=""
PROJECT_PATH=""
OUTPUT_PATH="$PROJECT_PATH/build"

# Move into the project folder
cd $PROJECT_PATH

# Find all .cpp files in the project folder
cpp_files=$(find . -name "*.cpp")

# If the output folder doesn't exist, create it
if [ ! -d $OUTPUT_PATH ]; then
  mkdir $OUTPUT_PATH
fi

# =================== !!!! WARNING !!!! =================== #
# This will delete all files in the output folder
# If you don't want to delete all files in the output folder,
# comment out the following lines
if [ "$(ls -A $OUTPUT_PATH)" ]; then
  rm $OUTPUT_PATH/*
fi
# ========================================================= #

# Compile the cpp files into a single executable
g++ $cpp_files -o $PROJECT_NAME

# Move the executable into the output folder
mv $PROJECT_NAME $OUTPUT_PATH

# Run the executable
$OUTPUT_PATH/$PROJECT_NAME
