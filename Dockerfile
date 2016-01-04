FROM daocloud.io/python:3.4-onbuild
MAINTAINER Walter <walterwanglei@163.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN pip install -r requirements.txt

ADD docker-entrypoint.sh /usr/src/app/docker-entrypoint.sh
RUN chmod +x /usr/src/app/*.sh

EXPOSE 80

CMD ["/usr/src/app/docker-entrypoint.sh"]
