#!/bin/bash
# Запустить все проверки
echo '=== Запуск мониторинга ==='
echo "Запуск от пользователя: $(whoami)"
echo "Время запуска: $(date)"
bash check_disk.sh
bash check_memory.sh
bash check_network.sh
echo '=== Готово ==='
