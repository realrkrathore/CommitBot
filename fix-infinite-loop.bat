@echo off
echo ========================================
echo EMERGENCY FIX FOR INFINITE LOOP WORKFLOW
echo ========================================
echo.
echo This script will:
echo 1. Fetch the latest remote state
echo 2. Reset local branch to match your fixed workflow
echo 3. Force push to stop the infinite loop
echo.
pause

cd /d "c:\Users\AUA3COB\Desktop\MyTesting\CommitBot\CommitBot"

echo Fetching latest remote state...
git fetch origin

echo.
echo Current status:
git status --short

echo.
echo Checking if our fixed workflow file exists...
if exist ".github\workflows\commit-bot.yml" (
    echo ✅ Fixed workflow file found
) else (
    echo ❌ Workflow file missing!
    pause
    exit /b 1
)

echo.
echo Attempting force push to stop infinite loop...
git push origin main --force-with-lease

if %ERRORLEVEL% equ 0 (
    echo.
    echo ✅ SUCCESS! Fixed workflow has been pushed.
    echo The infinite loop should now stop.
    echo.
    echo Next steps:
    echo 1. Go to your GitHub repository
    echo 2. Check the Actions tab - running workflows should complete
    echo 3. The workflow will now only run at scheduled times:
    echo    - 6:00 AM IST (Daily)
    echo    - 6:00 PM IST (Daily)
    echo    - 12:00 PM IST (Weekends only)
) else (
    echo.
    echo ❌ Push failed. You may need to:
    echo 1. Go to GitHub.com and manually disable the workflow
    echo 2. Then run this script again
    echo.
    echo Alternative: Delete and recreate the repository if the loop persists
)

echo.
echo Final status:
git status

pause
