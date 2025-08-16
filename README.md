# GitHub Commit Bot

Generate Organic™ GitHub activity
<br>_My most insidious idea yet_

<br>

<p align="center">
  <img width="90%" src="./the-dream.png" alt="The Contribution Dream">
</p>

<br>

This is a Bash script
<br>designed to be run locally
<br>(i.e. on _your_ machine)


_Oh hush_

Nobody commits every day
<br>Is that what you want?
<br>🚫 Sorry, not today

We're looking for a more realistic distribution of activity throughout the year

<br><br>

## Getting Started

> If you're on Windows™,
> <br>[setup the Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

[Install `git` if `git --version` errors out](https://github.com/git-guides/install-git)

<br>

1. Open your command-line
<br>& navigate to whatever folder you prefer

2. [Fork this project](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo) on GitHub

2. Download your new copy of this project

```shell
git clone https://github.com/<your-github-username>/commit-bot.git
```

**Don't forget to include your username**

3. Test run the script
<br>in case you need to fix permissions issues

```shell
/bin/bash ./commit-bot/bot.sh
```

4. [Open your crontab](https://www.howtogeek.com/101288/how-to-schedule-tasks-on-linux-an-introduction-to-crontab-files/) to set a trigger

```shell
crontab -e
```

> NOTE:
> <br>If this makes your screen almost blank
> <br>with no toolbar of keys to navigate,
> <br>you've probably entered the text editor Vim
> <br>
> <br>Remember, press "i" to start [i]nserting text
> <br>
> <br>When you're finished,
> <br>press "Esc" repeatedly until nothing happens
> <br>
> <br>Then type ":wq" to save & quit
> <br>or ":q!" to quit without saving

5. Add this line to [schedule every 10pm or whenever](https://crontab.guru/#0_22_*_*_*)

```shell
0 22 * * * /bin/bash /<full-path-to-your-folder>/commit-bot/bot.sh
```

**Do not forget to include the correct folder path**

> NOTE:
> <br>Make sure you save your changes
> <br>on your way out!
>
> To verify your cron installation:
>
> ```shell
> crontab -l
> ```
>
> that should print the same line
> <br>we just saved to your crontab
>
> Now, to celebrate, test your script 🎉
>
> ```shell
> /bin/bash /<full-path-to-your-folder>/commit-bot/bot.sh
> ```

**Auto-update:** 2025-08-06 18:43:35 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-07 08:07:45 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-07 18:43:19 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-08 08:07:30 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-08 18:41:29 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-09 07:54:44 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-09 12:18:10 IST | Trigger: Scheduled - Weekend Noon (12:00 PM IST)

**Auto-update:** 2025-08-09 18:34:30 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-09 19:41:32 IST | Trigger: Manual Trigger

**Auto-update:** 2025-08-10 08:11:09 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-10 12:18:10 IST | Trigger: Scheduled - Weekend Noon (12:00 PM IST)

**Auto-update:** 2025-08-10 18:34:48 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-11 08:07:17 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-11 18:40:45 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-12 07:53:37 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-12 18:37:38 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-13 07:55:13 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-13 18:38:43 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-14 07:56:33 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-14 18:39:24 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-15 07:57:22 IST | Trigger: Scheduled - Morning (6:00 AM IST)

**Auto-update:** 2025-08-15 18:35:05 IST | Trigger: Scheduled - Evening (6:00 PM IST)

**Auto-update:** 2025-08-16 07:50:42 IST | Trigger: Scheduled - Morning (6:00 AM IST)
