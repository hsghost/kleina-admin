FROM balenalib/asus-tinker-board-alpine-python:3.10-edge-run-20211014 as dev
LABEL version="1.0.0-dev"
WORKDIR /app
ADD . /app
RUN pip3 install --upgrade setuptools pip \
    && pip3 install -r requirements.dev.txt \
    && pip3 cache purge \
    && chmod +x app.py
CMD [ "python3" ]

# FROM balenalib/asus-tinker-board-alpine-python:3.9-run-20210705
# LABEL version="1.0.0"
# LABEL maintainer="15333619+hsghost@users.noreply.github.com"
# WORKDIR /app
# ADD . /app
# RUN pip3 install --upgrade setuptools pip \
#     && pip3 install -r requirements.txt \
    # && cd ./RPi.GPIO && python3 ./setup.py install \
    # && cd .. && rm -rf ./RPi.GPIO \
#     && pip3 cache purge \
#     && rm /app/requirements*.txt
# CMD [ "python3", "./app.py" ]
