#!/bin/bash
# Проверка сетевого интерфейса
INTERFACE=${1:-eth0}
if ip link show $INTERFACE | grep -q 'state UP'; then
    echo "OK: Интерфейс $INTERFACE активен"
else
    echo "WARNING: Интерфейс $INTERFACE недоступен"
fi
