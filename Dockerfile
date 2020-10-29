FROM python:3.6

USER root

ENV WORKING_DIR /app/AutoTest-Platform

COPY backend /${WORKING_DIR}/backend
COPY ./dist /${WORKING_DIR}/dist

RUN sh -c "echo 'Asia/Shanghai' > /etc/timezone" \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple\
    && cd ${WORKING_DIR}/backend\
    && pip install -r ./requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

ENTRYPOINT cd ${WORKING_DIR}/backend; python run.py;








