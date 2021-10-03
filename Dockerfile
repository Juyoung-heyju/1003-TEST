FROM tomcat:9.0.52

#mysql-connector 설치 및 압축 풀기 (+ yum update, upgrade)
RUN apt-get -y update && apt-get -y upgrade
#RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.26.tar.gz
#RUN tar zxvf mysql-connector-java-8.0.26.tar.gz

#mysql-connector => lib 폴더로
#RUN cp -a /usr/local/tomcat/mysql-connector-java-8.0.26/mysql-connector-java-8.0.26.jar /usr/local/tomcat/lib/

# (주영) /usr/local/tomcat/webapps 에 /ROOT/index.jsp 가 없었다..
# (주영) /usr/local/tomcat/webapps.dist/ROOT/index.jsp 에 존재했음..  ..

# (주영) tomcat이 실행되는 위치는 webapps/ROOT/index.jsp이다. 

#index.jsp 넣을 폴더
#RUN mkdir /usr/local/tomcat/webapps/ROOT/

#index.jsp 파일 넣기
#COPY ./index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

#기존 tomcat 루트 경로 삭제
#RUN rm -Rf /usr/local/tomcat/webapps/ROOT

#war파일 입력
COPY ./my-spring-board-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080


