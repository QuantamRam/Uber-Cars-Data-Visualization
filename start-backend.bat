@echo off
echo Starting Backend Server...
cd /d %~dp0backend
if not exist venv (
    echo Creating virtual environment...
    python -m venv venv
)
call venv\Scripts\activate
echo Installing dependencies...
pip install -r requirements.txt
echo Starting Flask server on http://localhost:5000
python app.py
pause

