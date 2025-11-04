Write-Host "Starting Uber Data Visualization Dashboard..." -ForegroundColor Green
Write-Host ""
Write-Host "Backend will run on http://localhost:5000"
Write-Host "Frontend will run on http://localhost:3000"
Write-Host ""
Write-Host "Starting servers..." -ForegroundColor Yellow

# Start backend
Start-Process powershell -ArgumentList "-NoExit", "-File", "$PSScriptRoot\start-backend.ps1"

# Wait a bit for backend to start
Start-Sleep -Seconds 5

# Start frontend
Start-Process powershell -ArgumentList "-NoExit", "-File", "$PSScriptRoot\start-frontend.ps1"

Write-Host ""
Write-Host "Both servers are starting!" -ForegroundColor Green
Write-Host "Backend: http://localhost:5000"
Write-Host "Frontend: http://localhost:3000"
Write-Host ""
Write-Host "Open http://localhost:3000 in your browser once servers are ready." -ForegroundColor Cyan
Write-Host ""
Write-Host "Press any key to exit this window (servers will continue running)..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

