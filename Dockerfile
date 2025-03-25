FROM     docker.io/python3.6
RUN      dnf install unzip -y
RUN      mkdir /app
WORKDIR  /tmp
ADD      https://roboshop-artifacts.s3.amazonaws.com/payment.zip /tmp/payment.zip
RUN      unzip /tmp/payment.zip
WORKDIR  /app
RUN      /tmp/payment   /app
RUN      pip3.6 install -r requirements.txt
COPY     run.sh /
ENTRYPOINT ["bash","/app/run.sh"]
