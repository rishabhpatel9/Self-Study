FROM jupyter/datascience-notebook
#LABEL maintainer.name="Jasmin Shah" \
#    maintainer.email="jasmin_shah@live.com" \
#    description="Python docker image for personal prjects with dependencies"

# Install system dependencies
#RUN sudo apt-get update
#COPY system_requirements.txt /tmp/
#RUN cat /tmp/system_requirements.txt | xargs apt install -y

# Install python dependencies
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

# Install 3rd party softwares

# Heroku CLI
# RUN curl https://cli-assets.heroku.com/install.sh | sh