# Docker 설정파일
# jdk 버전을 어떤걸쓸건지
FROM openjdk:17-jdk-slim

# 빌드한 .jar 위치 경로
ADD /build/libs/*.jar app.jar

# [java 를 사용하겠다, 애플리케이션의 보안 랜덤 값을 생성, Java에서 JAR(Java Archive) 파일을 실행, 실행할 JAR 파일의 경로]
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
