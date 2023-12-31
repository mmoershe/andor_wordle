#!/bin/bash

VENV_NAME="andor_wordle-venv"

echo "Checking if the venv already exists..."; echo ""
if [ -d "$VENV_NAME" ]; then 
    echo "The venv already exists!"; echo ""
else    
    echo "Venv doesn't exist yet. Creating it..."; echo ""
    python3 -m venv "$VENV_NAME"
    echo "Venv has been created!"; echo ""
fi

echo "Activating venv..."; echo ""
source "$VENV_NAME"/bin/activate

echo "Installing all the dependencies..."; echo ""
pip install -r "requirements.txt"
echo ""

echo "List of dependencies:"; echo ""
pip freeze

echo ""; echo "Done!"; echo ""

echo "Running the main script now..."; echo ""
python3 app.py