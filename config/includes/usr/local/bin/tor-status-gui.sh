#!/bin/bash
if systemctl is-active --quiet tor; then
    notify-send "🟢 Tor активен" "Сеть анонимизирована" -i network-wireless
else
    notify-send "🔴 Tor не запущен" "Запустите: anonsurf start" -i dialog-warning
fi