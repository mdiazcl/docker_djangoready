FROM python:3.11-rc-alpine

# Enviromental Variables
ENV DJANGOFOLDER /djangocode

# Install helpers
COPY ./bin/ /usr/bin/
RUN chmod +x /usr/bin/create_superuser \
             /usr/bin/install_requirements \
             /usr/bin/migrate \
             /usr/bin/runserver \
             /usr/bin/shell \
             /usr/bin/startproject \
             /usr/bin/start_notebook

# Install base deps
## Libs for pillow (PIL)
RUN apk update
RUN apk add build-base python3-dev py-pip jpeg-dev zlib-dev libffi-dev
ENV LIBRARY_PATH=/lib:/usr/lib

# Upgrade pip
RUN pip3 install --upgrade pip

# Install django and auxiliaries
RUN pip3 install Django==4.0.5
RUN pip3 install ipdb

# Jupyter Notebook
RUN pip3 install jupyter "ipython>=7.20" traitlets==5.1.1 pygments==2.4.1
RUN mkdir /jupyter
COPY ./jupyter/ /jupyter/

# Prepare Django folder
RUN mkdir /djangocode
WORKDIR /djangocode
