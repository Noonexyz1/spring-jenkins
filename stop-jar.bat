@echo off
echo Deteniendo la aplicación JAR

:: Encuentra el PID del proceso en ejecución en el puerto 8080 y lo mata
FOR /F "tokens=5" %%P IN ('netstat -aon ^| findstr :8080') DO (
    FOR /F "tokens=1" %%T IN ('tasklist /FI "PID eq %%P" ^| findstr java') DO (
        echo Terminando proceso con PID %%P
        taskkill /PID %%P /F
    )
)

echo Aplicación detenida
:: Fin del script