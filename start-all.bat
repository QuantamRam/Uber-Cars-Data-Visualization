@echo off
echo Starting Uber Data Visualization Dashboard...
echo.
echo This will start both backend and frontend servers.
echo Backend will run on http://localhost:5000
echo Frontend will run on http://localhost:3000
echo.
echo Press Ctrl+C to stop both servers.
echo.

cd /d %~dp0

start "Backend Server" cmd /k "start-backend.bat"
timeout /t 3 /nobreak >nul
start "Frontend Server" cmd /k "start-frontend.bat"

echo.
echo Both servers are starting!
echo Backend: http://localhost:5000
echo Frontend: http://localhost:3000
echo.
echo Open http://localhost:3000 in your browser once both servers are ready.
echo.
pause
