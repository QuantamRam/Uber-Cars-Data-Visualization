# GitHub Setup Instructions

This guide will help you upload this project to your GitHub repository.

## Step 1: Create a New Repository on GitHub

1. Go to [GitHub](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Repository name: `uber-data-visualization` (or any name you prefer)
5. Description: "A full-stack web application for visualizing Uber trip data with interactive maps and charts"
6. Choose **Public** or **Private**
7. **DO NOT** initialize with README, .gitignore, or license (we already have these)
8. Click "Create repository"

## Step 2: Upload to GitHub

### Option A: Using Git Commands (Recommended)

Open PowerShell or Command Prompt in the project directory and run:

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Uber Data Visualization Dashboard"

# Add your GitHub repository as remote (replace with your actual repo URL)
git remote add origin https://github.com/QuantamRam/uber-data-visualization.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

### Option B: Using GitHub Desktop

1. Download and install [GitHub Desktop](https://desktop.github.com/)
2. Open GitHub Desktop
3. Click "File" > "Add Local Repository"
4. Navigate to your project folder
5. Click "Publish repository" button
6. Enter repository name and description
7. Click "Publish Repository"

### Option C: Using VS Code

1. Open the project in VS Code
2. Open the Source Control panel (Ctrl+Shift+G)
3. Click "Initialize Repository" if needed
4. Stage all changes (click the "+" next to files)
5. Enter commit message: "Initial commit: Uber Data Visualization Dashboard"
6. Click "Commit"
7. Click "Publish Branch" button
8. Enter repository name and select "Publish to GitHub"

## Step 3: Verify Upload

1. Go to your GitHub repository: `https://github.com/QuantamRam/uber-data-visualization`
2. Verify all files are uploaded
3. Check that README.md displays correctly
4. Verify LICENSE file is present

## Troubleshooting

### If you get "remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/QuantamRam/uber-data-visualization.git
```

### If you need to update existing repository
```bash
git add .
git commit -m "Update project files"
git push origin main
```

### If authentication fails
- Use GitHub Personal Access Token instead of password
- Generate token: GitHub Settings > Developer settings > Personal access tokens > Generate new token
- Use token as password when pushing

## Next Steps

After uploading:
1. Add repository description on GitHub
2. Add topics/tags: `react`, `flask`, `data-visualization`, `uber`, `dashboard`
3. Add a screenshot to README (optional)
4. Enable GitHub Pages if you want to host the frontend (optional)

