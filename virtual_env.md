# Python Virtual Environment
It is a good idea to Use Python Virtual Environment to prevent versions issue between software stacks

## Linux 

The below commands are assuming aptitude package manger `apt`


Install python3.7
> You can change the version to what your project needs, and install multiple versions

* Install
    ```bash 
    sudo apt update
    sudo apt upgrade
    sudo apt install -y python3.7-venv
    ```

## All Systems

Open up a terminal
* Change directory to folder
    ```base
    cd /path/to/project
    ```
* Enable Virtual Environment
    ```bash
    python3 -m venv .venv
    ```
* Each bash window will need to:
    ```bash
    source /srv/git/<project>/.venv/bin/activate
    ```
* Extra packages
    ```bash
    pip3 install python-dateutil

## py_env.sh

create a file `~/py_env.sh`

```bash
#!/bin/bash 
VENV_FOLDER=.venv

function my_py() {
   source $VENV_FOLDER/bin/activate
}
function new_py() {
  python3 -m venv $VENV_FOLDER
}
```
then in your bash profile `~/.bashrc` you can source it.

```bash
source ~/py_env.sh
```
this will add commands to your terminal

* **new_py :** creates a `.venv` folder in the current folder. 
* **my_py :** sets you python to use virtual folder, you must in the folder that contains the `.venv` directory.

> For both command you most likely want to `cd` into your project root before running each command