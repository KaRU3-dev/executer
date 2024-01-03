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

echo "Finding *.cpp files...."

# Find all .cpp files in the project folder
cpp_files=$(find . -name "*.cpp")

echo "Finished find some source files!!"

# If the output folder doesn't exist, create it
if [ ! -d $OUTPUT_PATH ]; then
  echo "Creating folder...."
  mkdir $OUTPUT_PATH
  echo "Successfully create output folder!!"
fi

# =================== !!!! WARNING !!!! ================== #
# This will delete all files in the output folder
# If you don't want to delete all files in the output folder,
# comment out the following lines
if [ "$(ls -A $OUTPUT_PATH)" ]; then
  echo "Deleting old output files...."
  rm $OUTPUT_PATH/*
  echo "Successfully deleted all old output files!!"
fi
# ======================== COMPILE ======================= #

# Compile the cpp files into a single executable
echo "Compiling all founded source file...."
g++ $cpp_files -o $PROJECT_NAME
echo "Successfully created executable file!!"

# ========================= RUN ========================== #

echo "-------------------------------------------"
echo "Running $PROJECT_NAME"
echo "-------------------------------------------"

# Move the executable into the output folder
mv $PROJECT_NAME $OUTPUT_PATH

# Run the executable
$OUTPUT_PATH/$PROJECT_NAME
