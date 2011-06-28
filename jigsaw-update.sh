#!/bin/sh
# W3C CSS Validator 
# -----------------
# installs W3C CSS Validator
# see: http://jigsaw.w3.org/css-validator/DOWNLOAD.html
# see: http://esw.w3.org/CssValidator
# see: http://thecodetrain.co.uk/2009/02/running-the-w3c-css-validator-locally-from-the-command-line/
# Inspired by: http://stackoverflow.com/questions/1137884/is-there-an-open-source-css-validator-that-can-be-run-locally

CVSROOT=:pserver:anonymous:anonymous@dev.w3.org:/sources/public cvs get 2002/css-validator 
mkdir 2002/css-validator/lib
TOMCAT6_VERSION='6.0.32'
curl "http://www.apache.org/dist/tomcat/tomcat-6/v$TOMCAT6_VERSION/bin/apache-tomcat-$TOMCAT6_VERSION.tar.gz" > apache-tomcat-$TOMCAT6_VERSION.tar.gz
tar xvf apache-tomcat-$TOMCAT6_VERSION.tar.gz
mv apache-tomcat-$TOMCAT6_VERSION/lib/servlet-api.jar 2002/css-validator/lib/servlet.jar
rm -rf apache-tomcat-$TOMCAT6_VERSION apache-tomcat-$TOMCAT6_VERSION.tar.gz
cd 2002/css-validator
cp ../../build.patch .
patch -p1  build.xml -i build.patch
ant jar

echo ' move into the directory ./2002/css-validator/ and then use the jar-file';
echo '  Usage example: java -jar css-validator.jar "http://csszengarden.com/"';



