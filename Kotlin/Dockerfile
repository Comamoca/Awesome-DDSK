FROM zenika/kotlin:latest

COPY ddsk.kt .

RUN kotlinc ddsk.kt -include-runtime -d ddsk.jar

ENTRYPOINT [ "java", "-jar", "ddsk.jar" ]
