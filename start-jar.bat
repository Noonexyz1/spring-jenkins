@echo off
echo Iniciando la aplicación JAR

:: Detener cualquier instancia en ejecución de la aplicación
call stop-jar.bat

:: Nombre del archivo JAR de la aplicación
set JAR_PATH=target\spring-jenkins-0.0.1-SNAPSHOT.jar

:: Establecer BUILD_ID a dontKillMe para que Jenkins no mate el proceso
set BUILD_ID=dontKillMe

:: Ejecutar el JAR en segundo plano
start "" /B java -jar %JAR_PATH%

:: Esperar unos segundos para asegurarse de que el proceso ha iniciado correctamente
ping 127.0.0.1 -n 5 > nul

echo Aplicación iniciada
:: Fin del script
