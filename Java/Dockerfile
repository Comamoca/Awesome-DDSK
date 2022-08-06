FROM openjdk:20-jdk

WORKDIR /work

COPY ./Ddsk.java .
RUN javac Ddsk.java

ENTRYPOINT ["java", "Ddsk"]
