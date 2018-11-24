FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /home/hello_app
COPY . /home/hello_app
WORKDIR /home/hello_app
ENV ./conf/dev/.env /conf/dev/.env
RUN pip install -r requirements.txt
EXPOSE 8000
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
#RUN chmod +x /entrypoint.sh
#CMD ["gunicorn", "--chdir", "hello", "--bind", ":8000", "hello.wsgi:application", "--log-level", "debug"]