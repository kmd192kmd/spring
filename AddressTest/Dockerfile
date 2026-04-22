# Stage 1
# - Maven 빌드 > 코드 컴파일 > war 파일 생성
FROM maven:3.8-eclipse-temurin-11 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

# clean > 이전 빌드 결과물 삭제
# package > 프로젝트 소스를 컴파일하고 패키징을 해서 war를 만들어
# -DskipTests > JUnit 테스트를 하지 말아라
RUN mvn clean package -DskipTests



# Stage 2
# - 톰캣 > 실행 + war 파일 배포/운영
FROM tomcat:9.0-jdk11-temurin

ENV TZ=Asia/Seoul

# 기본 콘텐츠 삭제 > 내가 만든 war를 추가
RUN rm -f /usr/local/tomcat/webapps/*

# 내가 만든 war를 webapps에 복사
# 톰캣의 홈폴더에 복사된 java.war > 톰캣이 자동으로 압축을 풀고 사이트 시작
COPY --from=build /app/target/java-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080