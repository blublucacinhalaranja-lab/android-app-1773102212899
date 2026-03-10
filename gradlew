#!/usr/bin/env bash
##############################################################################
#
# Gradle wrapper script for Unix
#
#
# To use this script, add it to your project at the root and call it
# 'gradlew'.
#
#
##############################################################################

APP_BASE_NAME="gradlew"
APP_HOME=

if [ -n "$JAVA_HOME" ] ; then
  JAVA_HOME="$JAVA_HOME"
else
  if [ -x "$(command -v java)" ] ; then
    JAVA_HOME=""
  else
    echo "No suitable Java found."
    exit 1
  fi
fi

CLASSPATH=$(cd "$(dirname "$0")" && pwd)/gradle/wrapper/gradle-wrapper.jar

# Add local environment variables to the beginning of the PATH
export PATH="$PATH:."

# Execute Gradle
if [ -n "$JAVA_HOME" ] ; then
  exec "$JAVA_HOME/bin/java" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
else
  exec java -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
fi