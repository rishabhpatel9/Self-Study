FROM jupyter/datascience-notebook
LABEL maintainer.name="Rishabh Patel" \
    maintainer.email="rishabhpatel369@gmail.com" \
    description="Python docker image/dev environment for personal projects"

#Install system dependencies
#RUN sudo apt-get update
#COPY system_requirements.txt /tmp/
#RUN cat /tmp/system_requirements.txt | xargs apt install -y

# Install python dependencies
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

# Install 3rd party softwares

# Heroku CLI
# RUN curl https://cli-assets.heroku.com/install.sh | sh