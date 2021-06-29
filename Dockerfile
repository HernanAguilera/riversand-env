FROM openjdk:8-buster
RUN apt-get update && apt-get install git maven -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
RUN bash -c "source /root/.bashrc && nvm install 10"
RUN mkdir /code
WORKDIR /code
VOLUME [ "/code" ]
