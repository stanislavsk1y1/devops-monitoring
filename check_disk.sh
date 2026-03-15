#!/bin/bash
# Проверка дискового пространства
THRESHOLD=90
USAGE=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

if [ $USAGE -gt $THRESHOLD ]; then
    echo "WARNING: Диск заполнен на ${USAGE}%"
else
    echo "OK: Диск заполнен на ${USAGE}%"
fi
echo "Проверка выполнена: $(date)"