@echo off
echo Iniciando build do APK...
cd /d %~dp0

REM Dar permissão pro gradlew
chmod +x gradlew

REM Executar o build
call gradlew assembleRelease

REM Verificar se o APK foi gerado
IF EXIST app\build\outputs\apk\release\app-release.apk (
    echo APK gerado com sucesso!
    explorer app\build\outputs\apk\release\
) ELSE (
    echo Falha ao gerar APK.
)

pause
