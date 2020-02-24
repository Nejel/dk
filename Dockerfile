FROM python:3.7-stretch

ENV APP_DIR=src
ENV APP_PATH ${BASE_PATH}/${APP_DIR}

RUN mkdir -p ${APP_PATH}/csv

COPY ${APP_DIR} ${APP_PATH}

WORKDIR ${APP_PATH}

RUN pip3 install -r requirements.txt && pip3 install --no-cache ###HERE SHOULD BE GIT-part###
ENTRYPOINT ["python3", "app.py"]
