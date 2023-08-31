FROM python:3.9-slim-buster

ENV HOSTNAME DarkPyro

RUN apt update \
    ; apt -y install \
             git \
             neofetch

RUN git clone \
    https://github.com/tracemoepy/DarkPyro-REV \
    /darkpyro ; chmod 777 /darkpyro

WORKDIR /darkpyro

ENV PIP_ROOT_USER_ACTION=ignore

RUN pip3 install -r req*txt

CMD ["bash", "run.sh"]