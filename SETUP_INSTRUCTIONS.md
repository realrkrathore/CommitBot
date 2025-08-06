# GitHub Actions Setup Instructions

## 🎯 Purpose

These workflows will make automated commits that COUNT as your personal contributions in GitHub's contribution graph, unlike commits made by `github-actions[bot]`.

## 📁 Files Created

1. `.github/workflows/commit-bot.yml` - Updates `output.txt` file (like your `bot.sh` script)
2. `.github/workflows/readme-update.yml` - Updates `README.md` file (personal contribution version)

## 🔧 Setup Steps

### Step 1: Create Personal Access Token (PAT)

1. Go to GitHub Settings: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Give it a name like "CommitBot Token"
4. Set expiration (recommend "No expiration" for continuous operation)
5. Select scopes:
   - ✅ `repo` (Full control of private repositories)
   - ✅ `workflow` (Update GitHub Action workflows)
6. Click "Generate token"
7. **IMPORTANT**: Copy the token immediately (you won't see it again!)

### Step 2: Add Token to Repository Secrets

1. Go to your repository settings
2. Navigate to "Secrets and variables" → "Actions"
3. Click "New repository secret"
4. Name: `PAT_TOKEN`
5. Value: Paste the token you copied in Step 1
6. Click "Add secret"

### Step 3: Update Git Configuration

In both workflow files, replace the email address:

```yaml
git config user.email "your-email@example.com" # Replace with your GitHub email
```

**Use the SAME email address that's associated with your GitHub account!** This is crucial for contributions to be counted.

### Step 4: Commit and Push

1. Commit these workflow files to your repository
2. Push to the `main` branch
3. The workflows will start running automatically

## ⏰ Schedule

Both workflows run at the same times:

- **6:00 AM IST** (00:30 UTC) - Daily
- **6:00 PM IST** (12:30 UTC) - Daily
- **12:00 PM IST** (06:30 UTC) - Weekends only

## 🔍 Key Differences from Your Original

### What Makes Contributions Count:

1. **Personal Access Token**: Uses `PAT_TOKEN` instead of `GITHUB_TOKEN`
2. **Your Git Identity**: Uses your username/email instead of `github-actions[bot]`
3. **Authentication**: Commits are made as YOU, not as a service account

### commit-bot.yml Features:

- Updates `output.txt` with timestamp (like your `bot.sh`)
- Uses IST timezone
- Same commit message format as your original script
- Handles the same edge cases (file creation, manual triggers, etc.)

## 🧪 Testing

You can test the workflows by:

1. Going to "Actions" tab in your repository
2. Select either workflow
3. Click "Run workflow" → "Run workflow" (manual trigger)
4. Check that commits appear in your contribution graph

## 🚨 Important Notes

1. **Email Address**: Must match your GitHub account email exactly
2. **Token Security**: Never share your PAT token with anyone
3. **Token Expiration**: Set a reminder to renew your PAT before it expires
4. **Repository Visibility**: Works for both public and private repositories
5. **Contribution Graph**: May take a few minutes to update after commits

## 🔧 Troubleshooting

### Contributions Not Showing:

- Verify email in workflow matches your GitHub email
- Check that PAT_TOKEN secret is set correctly
- Ensure repository is not a fork (forks don't count contributions)

### Workflow Failures:

- Check the Actions tab for error details
- Verify PAT_TOKEN has correct permissions
- Ensure main branch name matches (some repos use `master`)

---

**🎉 Once set up, you'll have fully automated daily commits that count as YOUR contributions without needing your computer to be on!**
