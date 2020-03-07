#!/bin/bash 
VENV_FOLDER=.venv

function my_py() {
   # Changes current terminal to use .venv for
   # python3 command
   source $VENV_FOLDER/bin/activate
   which python3
}
function new_py() { 
  # Crates new python .venv folder 
  python3 -m venv $VENV_FOLDER
}
function my_py_req(){
    echo "Install Requirements"
    python3 -m pip install -r requirements.txt
}
function my_py_reqd(){
    echo "Install Dev Requirements"
    python3 -m pip install -r requirements.txt
}
function my_py_fix(){
    echo "Adding dateutil"
    python3 -m pip install python-dateutil
    echo "Updating setup tools"
    python3 -m pip install --update setuptools
}
