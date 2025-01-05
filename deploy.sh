#!/bin/bash

# Tomcatのディレクトリ
TOMCAT_DIR="/opt/apache-tomcat-10.1.15"

# プロジェクトのディレクトリ
PROJECT_DIR="/project/workspace/terasoluna-app"  # ここを適切なプロジェクトパスに置き換える
TARGET_WAR="$PROJECT_DIR/target/terasoluna-app.war"

# Tomcatを停止
echo "Stopping Tomcat..."
$TOMCAT_DIR/bin/catalina.sh stop

# プロジェクトをクリーン＆ビルド
echo "Building the project..."
cd "$PROJECT_DIR" || exit
mvn clean package -DskipTests

# ビルド成功確認
if [ ! -f "$TARGET_WAR" ]; then
  echo "Build failed. WAR file not found."
  exit 1
fi

# WARファイルをTomcatのwebappsにコピー
echo "Deploying the WAR file to Tomcat..."
cp "$TARGET_WAR" "$TOMCAT_DIR/webapps/"

# Tomcatを起動
echo "Starting Tomcat..."
$TOMCAT_DIR/bin/catalina.sh start

# デプロイ完了メッセージ
echo "Deployment completed. Access your application at http://localhost:8080/terasoluna-app"
