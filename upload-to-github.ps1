# GitHub Upload Script for Uber Data Visualization Dashboard
# Author: Ram Chandar Sanaboyina

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "GitHub Upload Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
try {
    git --version | Out-Null
    Write-Host "✓ Git is installed" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed. Please install Git first." -ForegroundColor Red
    exit 1
}

# Check if we're in a git repository
if (-not (Test-Path .git)) {
    Write-Host "Initializing Git repository..." -ForegroundColor Yellow
    git init
}

# Ask for repository URL
Write-Host ""
Write-Host "Enter your GitHub repository URL:" -ForegroundColor Yellow
Write-Host "Example: https://github.com/QuantamRam/uber-data-visualization.git" -ForegroundColor Gray
$repoUrl = Read-Host "Repository URL"

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "Repository URL is required. Exiting." -ForegroundColor Red
    exit 1
}

# Add remote if it doesn't exist
$existingRemote = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "Adding remote repository..." -ForegroundColor Yellow
    git remote add origin $repoUrl
} else {
    Write-Host "Remote already exists: $existingRemote" -ForegroundColor Yellow
    $update = Read-Host "Update remote? (y/n)"
    if ($update -eq "y" -or $update -eq "Y") {
        git remote set-url origin $repoUrl
        Write-Host "Remote updated." -ForegroundColor Green
    }
}

# Add all files
Write-Host ""
Write-Host "Adding files to Git..." -ForegroundColor Yellow
git add .

# Check if there are changes to commit
$status = git status --porcelain
if ([string]::IsNullOrWhiteSpace($status)) {
    Write-Host "No changes to commit." -ForegroundColor Yellow
} else {
    Write-Host "Creating commit..." -ForegroundColor Yellow
    git commit -m "Initial commit: Uber Data Visualization Dashboard by Ram Chandar Sanaboyina"
    Write-Host "✓ Commit created" -ForegroundColor Green
}

# Set branch to main
Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main 2>$null

# Push to GitHub
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You may be prompted for GitHub credentials." -ForegroundColor Cyan
Write-Host ""

$push = Read-Host "Push to GitHub now? (y/n)"
if ($push -eq "y" -or $push -eq "Y") {
    git push -u origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "✓ Successfully uploaded to GitHub!" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Repository URL: $repoUrl" -ForegroundColor Cyan
        Write-Host ""
    } else {
        Write-Host ""
        Write-Host "✗ Push failed. Please check your credentials and try again." -ForegroundColor Red
        Write-Host ""
        Write-Host "If authentication fails, you may need to:" -ForegroundColor Yellow
        Write-Host "1. Use a Personal Access Token instead of password" -ForegroundColor Yellow
        Write-Host "2. Configure Git credentials: git config --global user.name 'Your Name'" -ForegroundColor Yellow
        Write-Host "3. Configure Git email: git config --global user.email 'your.email@example.com'" -ForegroundColor Yellow
    }
} else {
    Write-Host "Push cancelled. Run 'git push -u origin main' manually when ready." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Script completed." -ForegroundColor Cyan

