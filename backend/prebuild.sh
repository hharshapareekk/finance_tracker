#!/bin/sh
echo "----- Checking for Maven Wrapper -----"
if [ ! -f "./mvnw" ]; then
  echo "Maven wrapper missing - downloading..."
  curl -sSL https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.6.5/maven-wrapper-0.6.5.tar.gz | tar xz
  chmod +x mvnw
else
  echo "Maven wrapper exists"
fi