# set base image OS
FROM python:3.9-slim-buster

# set ENV TZ and ...
ENV TZ="Asia/Jakarta"
ENV GIT_PYTHON_REFRESH=quiet

# install git
RUN apt update && apt install git -y

# clone source repo
RUN git clone \
    https://github.com/2R-Dark-Kanger-Pro/DarkPyro-REV \
    /home/darkpyro

# set workdir
WORKDIR /home/darkpyro
COPY config.env .

# install depend...
ENV PIP_ROOT_USER_ACTION=ignore
RUN pip3 install -r req*txt

# run
CMD ["python3", "-m", "ProjectDark"]