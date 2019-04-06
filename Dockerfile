FROM java:8
#EXPOSE 8205
LABEL com.docker.compose.project="自动测试接口"
ENV TZ=Asia/Shanghai
ADD target/demo-0.0.1-SNAPSHOT.jar /app.jar
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT ["java","-jar","/app.jar"]
