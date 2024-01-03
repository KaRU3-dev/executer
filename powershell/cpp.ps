# Note:
#   If can not run this file or get error,
#       please try to run this script wint administrator permission
#
# Created by https://github.com/KaRU3-dev
#

$projectName = ""
$projectFolder = ""
$outputFolder = "$projectFolder\output"

echo "Building and running $projectName"

# Move to the project folder
cd $projectFolder

echo "Building..."

# If the output folder doesn't exist, create it
if (!(Test-Path $outputFolder)) {
    echo "Creating output folder..."
    New-Item -ItemType Directory -Path $outputFolder
    echo "Output folder created!!"
}


# ==================== !!! WARNING !!! ==================== #
# This will delete all files in the output folder
# Remove this if you don't want to delete the files
echo "Deleting old files..."
Remove-Item $outputFolder\*
echo "Old files deleted!!"
# ==================== !!! WARNING !!! ==================== #


echo "Compiling..."

# Find all cpp files in the project folder
$cppFiles = Get-ChildItem -Path $projectFolder -Filter *.cpp -Recurse

# Compile the cpp files into a single executable
g++ $cppFiles -o $outputFolder\$projectName.exe

echo "Compilation finished!!"

# Move to the output folder
cd $outputFolder

echo "-------------------------------------------"
echo "Running $projectName.exe"
echo "-------------------------------------------"

# Run the executable with powershell command
& .\$projectName.exe
