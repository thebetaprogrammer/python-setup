# Python Install

# Linux Setup 

** Developer tools like gcc**
```
sudo apt update && sudo apt upgrade
sudo apt install software-properties-common
```

## Python 
```bash
sudo apt install python3.7  python3.7-dev python3-pip
```
* **python3.7 :** python3 binary and files, this includes the interpreter which translates `.py` files into computer instructions.
* **python3.7-dev :** includes extra libraries that developers will need, may not be needed on client system. 
* **python3-pip :** Python Package manager utility this will enable the use of 3rd party packages from repositories such as [pypi](https://pypi.org/)

> Useful commands: 
> * `python3 -V` will show what version
> * `which python3` will show the folder 
> * `pip3 show <package>` information about the package that is installed
> * You may want to use the command `python3 -m pip` in lue of just `pip3`. This may fix issue in some docker and CICD configurations. 

## Libraries needed to compile python3 (Advance)
** Extra libs
``` 
 sudo apt install \
    build-essential \
    zlib1g-dev  \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev \
    wget
```

