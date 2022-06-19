# Django Ready
A docker image to work and prototype fast django projects. It contains a Jupyter notebook ready to use.

# Usage
For local development only! Run this commands within a folder.

**MacOS**
```bash
docker run --rm -it -p 8000:8000 -v ${PWD}/code:/djangocode mdiazcl/djangoready:4 sh
```

**Windows (Powershell)**
```bash
docker run --rm -it -p 8000:8000 -v ${pwd}/code:/djangocode mdiazcl/djangoready:4 sh
```

**Linux**
```bash
docker run --rm -it -p 8000:8000 -v $(pwd)/code:/djangocode mdiazcl/djangoready:4 sh
```

## Useful image commands

| Command              | Description                                                        |
|----------------------|--------------------------------------------------------------------|
| startproject         | Creates all the necessary files and folders for the django project |
| runserver            | Runs django's development server in `0.0.0.0:8000`                   |
| migrate              | Create SQL migrations and migrate them into Database               |
| install_requirements | Installs local requirements.txt file with pip                      |
| shell                | Starts django's shell                                              |
| start_notebook       | Starts jupyter notebook server with all the configurations needed  |


# Django Notebook
This image creates a folder named "notebooks" within the project's folder. In there, there are two files `jupyter.py`and `example.ipynb`. The first file is a simple python script that load all the settings from your project in the notebook. The second file is just an example with a small piece of code that shows you how to start hacking your notebooks.

Enjoy :)
