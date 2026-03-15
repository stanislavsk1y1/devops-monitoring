#!/bin/bash
# Проверка использования памяти
FREE=$(free -m | awk 'NR==2{print $4}')
echo "Свободно памяти: ${FREE} MB"
