#!/bin/bash
# Проверка загрузки CPU
CPU_IDLE=$(top -bn1 | grep 'Cpu(s)' | awk '{print $8}' | tr -d '%id,')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)
THRESHOLD=80

if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
    echo "WARNING: CPU загружен на ${CPU_USAGE}%"
else
    echo "OK: CPU загружен на ${CPU_USAGE}%"
fi
