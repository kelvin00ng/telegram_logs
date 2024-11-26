# Mail Log Monitor

This script monitors a specified log file (default: `/var/log/mail.log`) and sends updates to a Telegram bot whenever new entries are added. It includes features for rate limiting message sending and automatic restarting with notifications.

## Prerequisites

Before using this script, ensure you have the following prerequisites:

- **Bash**: The script is written in Bash and should work in most Unix-like environments, including Linux and macOS.
- **Curl**: Make sure that `curl` is installed on your system for sending HTTP requests. You can install it using your package manager (e.g., `apt`, `yum`, or `brew`).
- **Telegram Bot**: You need to create a Telegram bot using [BotFather](https://core.telegram.org/bots#botfather) and get your bot token.
- **Chat ID**: You need the chat ID of the Telegram channel or user where you want to send notifications. You can get this by messaging your bot and inspecting the response or using the Telegram API.

## Installation

1. Clone or download this repository to your local machine.

2. Open a terminal and navigate to the directory where the script is saved.

3. Make the script executable by running:
   ```bash
   chmod +x mail_log_monitor.sh