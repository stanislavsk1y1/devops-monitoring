#!/bin/bash
# Отправка уведомлений
send_alert() {
    echo "ALERT: $1" >> /var/log/alerts.log
}
