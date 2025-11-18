@echo off
chcp 65001 >nul

start "" "http://127.0.0.1:8090"
timeout /t 2 /nobreak >nul

python -m mkdocs serve -a 127.0.0.1:8090
