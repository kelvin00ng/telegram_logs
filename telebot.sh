#!/bin/bash

# Telegram Bot Token and Chat ID
BOT_TOKEN="token"
CHAT_ID="id"

# Path to the log file
LOG_FILE="/var/log/mail.log"
RATE_LIMIT_SECONDS=5  # Rate limit in seconds

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file does not exist."
    exit 1
fi

# Function to send a log message to Telegram
send_log_to_telegram() {
    local log_entry="$1"
    # Use curl to send the message
    curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" \
        -d "chat_id=$CHAT_ID" \
        -d "text=$log_entry" \
        -d "parse_mode=HTML"
}

# Function to send a restart notification
send_restart_notification() {
    send_log_to_telegram "The log monitoring script has restarted."
}

# Main logic to monitor the log file
while true; do
    tail -n 0 -F "$LOG_FILE" | while read line; do
        # Prepare the line for sending, escaping HTML special characters
        escaped_line=$(echo "$line" | sed 's/&/&amp;/g; s/</&lt;/g; s/>/&gt;/g; s/"/&quot;/g; s/'"'"'/&apos;/g')
        send_log_to_telegram "$escaped_line"
        sleep $RATE_LIMIT_SECONDS  # Rate limit the message sending
    done
    # If the loop exits, send a notification and restart
    send_restart_notification
done