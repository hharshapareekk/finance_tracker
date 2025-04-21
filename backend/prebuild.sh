#!/bin/bash
set -e  # Exit immediately on error

echo "===== Java Installation Check ====="
sudo apt-get update
sudo apt-get install -y openjdk-21-jdk
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

echo "----- Java Version -----"
java -version
javac -version

echo "===== Maven Wrapper Check ====="
if [ ! -f "./mvnw" ]; then
  echo "Downloading Maven Wrapper..."
  curl -sSL https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.6.5/maven-wrapper-0.6.5.tar.gz | tar xz
  chmod +x mvnw
fi

echo "----- Maven Version -----"
./mvnw --version