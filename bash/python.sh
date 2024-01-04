#!/bin/bash

# If you want to move to project directory after initialization, follow command below
# $ bash init_project.sh && cd {ProjectName}

# Config
PROJECT_NAME=""
FULL_PATH=$(pwd)

echo "-------------------------------------------"
echo "Initializing Python project"
echo "-------------------------------------------"

echo "Creating virtual environment..."

# Create project directory
mkdir $PROJECT_NAME
# Move to project directory
cd $PROJECT_NAME
# Init virtual environment
python -m venv .venv
# Create source directory
mkdir src
# Create module directory
mkdir src/module && touch src/module/__init__.py
# Create test directory
mkdir test

echo "Creating requirements.txt and main.py..."

# Create requirements.txt
touch requirements.txt

# Create main.py
touch src/main.py
echo "def main():" > src/main.py
echo "    print('Hello World!')" >> src/main.py
echo "" >> src/main.py
echo "if __name__ == '__main__':" >> src/main.py
echo "    main()" >> src/main.py

# Create execute script
touch run.sh
echo "#!/bin/bash" > run.sh
echo "" >> run.sh
echo "echo \"-------------------------------------------\"" >> run.sh
echo "echo "Running Python project in venv"" >> run.sh
echo "echo \"-------------------------------------------\"" >> run.sh
echo "" >> run.sh
echo "echo \"\"" >> run.sh
echo "# Activate virtual environment" >> run.sh
echo ". .venv/bin/activate" >> run.sh
echo "" >> run.sh
echo "# Run main.py" >> run.sh
echo "python src/main.py" >> run.sh
