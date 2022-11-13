FROM tomcat:8-jdk8
ADD ./game-of-life
RUN cd game-of-life && mvn install && mvn jetty:run
EXPOSE 9090
WORKDIR /game-of-life
CMD ["ng", "serve", "--host", "0.0.0.0"]
