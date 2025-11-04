cd $PSScriptRoot\backend
if (-not (Test-Path venv)) {
    Write-Host "Creating virtual environment..."
    python -m venv venv
}
Write-Host "Activating virtual environment..."
& .\venv\Scripts\Activate.ps1
Write-Host "Installing dependencies..."
pip install -r requirements.txt
Write-Host "Starting Flask server on http://localhost:5000"
python app.py

