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

## Configuration
1. Create a Telegram Bot and Get the Token:
    - Open Telegram and search for the "BotFather" user.
    - Start a chat with BotFather and use the command /newbot.
    - Follow the instructions provided to create your bot and get the bot token.
2. Get the Chat ID:
    - Start a chat with your bot in Telegram.
    - Send any message to your bot.
    - Use the following API call to get your chat ID:
    ```bash
    https://api.telegram.org/bot<YOUR_BOT_TOKEN>/getUpdates
    ```
    - Look for "chat":{"id":...} in the JSON response. Use this ID in the script.
3. Edit Script Variables:
    -Open the script in a text editor.
    -Replace the BOT_TOKEN and CHAT_ID variables with your actual bot token and chat ID:
    ```bash
    BOT_TOKEN="YOUR_BOT_TOKEN"
    CHAT_ID="YOUR_CHAT_ID"
    ```
4. Specify the Log File:
    - Ensure that the log file path is correct. The default path is set to /var/log/mail.log, but you can change it to any log file you want to monitor.

## Running the Script
1. Save the script
    - Copy the provided script into test file
2. Make the script excutable
    ```bash
    chmod +x log_monitor.sh
    ```
3. Run the script
    - Execute the script in terminal:
    ```bash
    ./log_monitor.sh
    ```

#Extensions
1. Usage of screens or other utility to allow the script to run continously