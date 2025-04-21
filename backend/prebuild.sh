cd backend
(
echo #!/bin/sh
echo echo "----- Checking for Maven Wrapper -----"
echo if [ ! -f "./mvnw" ]; then
echo   echo "Maven wrapper missing - downloading..."
echo   curl -sSL https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.6.5/maven-wrapper-0.6.5.tar.gz ^| tar xz
echo   chmod +x mvnw
echo else
echo   echo "Maven wrapper exists"
echo fi
) > prebuild.sh