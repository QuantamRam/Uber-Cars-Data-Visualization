cd $PSScriptRoot\frontend
if (-not (Test-Path node_modules)) {
    Write-Host "Installing dependencies..."
    npm install
}
Write-Host "Starting frontend server on http://localhost:3000"
npm run dev

