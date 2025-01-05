# CodeSandbox supports debian & ubuntu based images
FROM eclipse-temurin:17-jdk

# Example; install htop by default
RUN apt update -y && apt install -y htop maven

# The project will be mounted in /workspace by default

# Every new shell will open inside the built container

# On top of this build, we install `zsh`, `git` and `docker` as additional
# Docker layers.

# 作業ディレクトリを設定
WORKDIR /opt

# Tomcatをダウンロードして解凍
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-10/v10.1.15/bin/apache-tomcat-10.1.15.tar.gz \
    && tar -xzvf apache-tomcat-10.1.15.tar.gz \
    && rm apache-tomcat-10.1.15.tar.gz

# Tomcatを実行可能に設定
RUN chmod +x /opt/apache-tomcat-10.1.15/bin/catalina.sh

# ポート8080を公開
EXPOSE 8080

# Tomcatをデフォルトで起動する
CMD ["/opt/apache-tomcat-10.1.15/bin/catalina.sh", "run"]