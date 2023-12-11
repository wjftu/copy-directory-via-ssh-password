FROM wjftu/sshpass:latest

LABEL author="wjftu"

COPY entrypoint.sh /entrypoint.sh 

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]