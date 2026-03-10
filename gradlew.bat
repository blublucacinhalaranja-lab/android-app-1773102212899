@rem
@rem Gradle wrapper batch script
@rem
@rem To use this script, add it to your project at the root and call it
@rem 'gradlew.bat'.
@rem
@rem

@echo off

setlocal

if "%JAVA_HOME%" == "" (
  echo Looking for a suitable Java Virtual Machine...
  for %%i in ("%JAVA_HOME%" "C:\Program Files\Java\jre1.8.0" "C:\Program Files\Java\jdk1.8.0") do (
    if exist "%%i\bin\java.exe" (
      set JAVA_HOME=%%i
      echo Using JVM at "%%i"
      goto foundJava
    )
  )
  echo Could not find an installed Java version.
  exit /b 1
) else (
  echo Using JAVA_HOME defined environment variable.
)

:foundJava

set CLASSPATH=%~dp0\gradle\wrapper\gradle-wrapper.jar

"%JAVA_HOME%\bin\java" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*

endlocal