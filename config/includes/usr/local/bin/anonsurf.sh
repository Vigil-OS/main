#!/bin/bash
# anonsurf — простой скрипт для включения/выключения анонимности

set -e

INTERFACE=$(ip route | grep default | awk '{print $5}' | head -n1)

case "$1" in
    start)
        echo "[+] Запуск анонимности..."
        sudo systemctl start tor
        sleep 3
        sudo iptables -F
        sudo iptables -t nat -F
        sudo iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-ports 8118
        sudo iptables -t nat -A OUTPUT -p tcp --dport 443 -j REDIRECT --to-ports 8118
        sudo iptables -t nat -A OUTPUT -p udp --dport 53 -j REDIRECT --to-ports 53
        sudo iptables -t nat -A OUTPUT -p tcp --dport 53 -j REDIRECT --to-ports 53
        sudo ip route add 127.0.0.1 dev lo table 100
        sudo ip rule add from 127.0.0.1 table 100
        echo "✅ Анонимность включена (через Tor)"
        ;;
    stop)
        echo "[+] Отключение анонимности..."
        sudo iptables -F
        sudo iptables -t nat -F
        sudo systemctl stop tor
        echo "✅ Сеть восстановлена"
        ;;
    status)
        if systemctl is-active --quiet tor; then
            echo "🟢 Tor активен"
        else
            echo "🔴 Tor не запущен"
        fi
        ;;
    *)
        echo "Usage: anonsurf {start|stop|status}"
        exit 1
        ;;
esac