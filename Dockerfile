FROM ubuntu
RUN apt-get update
RUN apt install -y wget gnupg
RUN wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN apt-get update
RUN apt-get install -y mongodb-org-shell mongodb-org-tools
RUN apt-get install -y mysql-client
RUN apt-get install -y postgresql-client
CMD ["/bin/bash"]
