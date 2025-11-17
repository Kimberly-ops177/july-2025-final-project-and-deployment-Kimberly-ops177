# Deployment Guide

This guide will walk you through deploying your portfolio website to GitHub Pages, Netlify, or Vercel.

## 🎉 Current Deployment Status

**✅ LIVE ON VERCEL**
- **Production URL:** https://july-2025-final-project-and-deploym-kimberlys-projects-b38013d9.vercel.app/
- **Platform:** Vercel
- **Auto-Deploy:** Enabled (deploys on push to `main` branch)
- **SSL/HTTPS:** Enabled
- **GitHub Repo:** https://github.com/Kimberly-ops177/july-2025-final-project-and-deployment-Kimberly-ops177

---

## Prerequisites
- Git installed on your computer
- GitHub account
- Your website files ready

---

## Option 1: GitHub Pages (Free)

### Step 1: Create GitHub Repository
1. Go to https://github.com and sign in
2. Click the "+" icon in the top right > "New repository"
3. Name it `portfolio-website` (or your preferred name)
4. Make it Public
5. Click "Create repository"

### Step 2: Push Your Code
```bash
# Navigate to your project folder
cd portfolio-website

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial commit: Portfolio website"

# Add remote repository (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/portfolio-website.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click "Settings"
3. Scroll to "Pages" in the left sidebar
4. Under "Source", select "main" branch
5. Click "Save"
6. Your site will be live at: `https://YOUR_USERNAME.github.io/portfolio-website/`

---

## Option 2: Netlify (Recommended)

### Method A: Drag and Drop (Easiest)
1. Go to https://netlify.com
2. Sign up or log in
3. Drag your entire project folder onto the Netlify drop zone
4. Your site will be live in seconds!
5. You'll get a URL like: `https://random-name-12345.netlify.app`

### Method B: Connect to GitHub (Automatic Deployment)
1. Push your code to GitHub (see Option 1, Steps 1-2)
2. Go to https://netlify.com and log in
3. Click "Add new site" > "Import an existing project"
4. Choose "GitHub" and authorize Netlify
5. Select your repository
6. Build settings are auto-detected (usually empty for static sites)
7. Click "Deploy site"
8. Your site will auto-deploy on every push to GitHub!

### Custom Domain on Netlify
1. Go to Site settings > Domain management
2. Click "Add custom domain"
3. Follow the instructions to update your DNS settings

---

## Option 3: Vercel

### Step 1: Install Vercel CLI (Optional)
```bash
npm install -g vercel
```

### Step 2: Deploy

#### Method A: Using Vercel Website
1. Go to https://vercel.com
2. Sign up or log in
3. Click "New Project"
4. Import your GitHub repository
5. Click "Deploy"

#### Method B: Using Vercel CLI
```bash
# Navigate to your project
cd portfolio-website

# Deploy (follow the prompts)
vercel

# For production deployment
vercel --prod
```

Your site will be live at: `https://your-project-name.vercel.app`

---

## Post-Deployment Checklist

### 1. Test Your Site
- [ ] All pages load correctly
- [ ] Navigation works on mobile
- [ ] Forms submit (if applicable)
- [ ] Images load properly
- [ ] Links open correctly

### 2. SEO Optimization
- [ ] Add Google Analytics (optional)
- [ ] Submit sitemap to Google Search Console
- [ ] Update meta descriptions
- [ ] Check page load speed

### 3. Update README
- [ ] Add your live site URL to README.md
- [ ] Update any placeholder content
- [ ] Add screenshots of your site

---

## Updating Your Live Site

### GitHub Pages
```bash
# Make changes to your files
# Then commit and push
git add .
git commit -m "Update website content"
git push
```
Site updates automatically in 1-5 minutes

### Netlify (with GitHub integration)
```bash
# Make changes and push to GitHub
git add .
git commit -m "Update website"
git push
```
Netlify auto-deploys in ~1 minute

### Vercel
```bash
# Push to GitHub or use CLI
git push

# OR using Vercel CLI
vercel --prod
```

---

## Custom Domain Setup

### 1. Purchase a Domain
- Namecheap, GoDaddy, or Google Domains

### 2: Configure DNS

#### For GitHub Pages:
Add these DNS records:
```
Type: A
Name: @
Value: 185.199.108.153
Value: 185.199.109.153
Value: 185.199.110.153
Value: 185.199.111.153

Type: CNAME
Name: www
Value: YOUR_USERNAME.github.io
```

#### For Netlify:
1. Go to Domain settings
2. Follow Netlify's DNS instructions
3. Add provided nameservers to your domain registrar

#### For Vercel:
1. Go to Project settings > Domains
2. Add your custom domain
3. Add provided DNS records to your registrar

---

## Troubleshooting

### Issue: Site not loading
- Clear browser cache
- Check if deployment finished (check platform dashboard)
- Verify all files were uploaded

### Issue: 404 errors
- Check file paths are relative (`./css/style.css` not `/css/style.css`)
- Ensure filenames match exactly (case-sensitive)

### Issue: Images not showing
- Verify image paths
- Check image files were uploaded
- Ensure images are in correct folder

### Issue: Forms not working
- GitHub Pages doesn't support backend forms
- Use Netlify Forms or Formspree for form handling

---

## Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Netlify Documentation](https://docs.netlify.com/)
- [Vercel Documentation](https://vercel.com/docs)

---

Good luck with your deployment! ���
