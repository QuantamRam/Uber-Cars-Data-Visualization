# 🚀 Quick Start Guide - Upload to GitHub

## Easy Steps to Upload Your Project

### Method 1: Using the Automated Script (Easiest)

1. **Run the PowerShell script:**
   ```powershell
   .\upload-to-github.ps1
   ```

2. **Follow the prompts** - it will guide you through the process

### Method 2: Manual Upload (Quick Commands)

1. **Create repository on GitHub first:**
   - Go to https://github.com/new
   - Name: `uber-data-visualization`
   - Don't initialize with README
   - Click "Create repository"

2. **Run these commands in PowerShell:**
   ```powershell
   # Add all files
   git add .
   
   # Create commit
   git commit -m "Initial commit: Uber Data Visualization Dashboard by Ram Chandar Sanaboyina"
   
   # Set branch to main
   git branch -M main
   
   # Add remote (replace with your actual repo URL)
   git remote add origin https://github.com/QuantamRam/uber-data-visualization.git
   
   # Push to GitHub
   git push -u origin main
   ```

### Method 3: Using GitHub Desktop

1. Download [GitHub Desktop](https://desktop.github.com/)
2. Open GitHub Desktop
3. File > Add Local Repository
4. Select your project folder
5. Click "Publish repository"
6. Enter name: `uber-data-visualization`
7. Click "Publish"

## Your Repository Details

- **Author:** Ram Chandar Sanaboyina
- **GitHub:** [@QuantamRam](https://github.com/QuantamRam)
- **License:** MIT
- **Copyright:** © 2024 Ram Chandar Sanaboyina

## After Uploading

1. ✅ Visit your repository: `https://github.com/QuantamRam/uber-data-visualization`
2. ✅ Verify README displays correctly
3. ✅ Add repository description: "A full-stack web application for visualizing Uber trip data with interactive maps and charts"
4. ✅ Add topics: `react`, `flask`, `data-visualization`, `uber`, `dashboard`, `python`, `javascript`
5. ✅ Add a screenshot (optional but recommended)

## Need Help?

Check `GITHUB_SETUP.md` for detailed instructions.

