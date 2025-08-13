#!/bin/bash
CHOICE=$(zenity --list \
  --title="🔐 VigilOS Hub" \
  --text="Выберите действие:" \
  --width=400 --height=300 \
  --column="Действие" \
  "Запустить Tor (anonsurf start)" \
  "Остановить Tor (anonsurf stop)" \
  "Запустить аудит (lynis)" \
  "Открыть документацию" \
  "Установить на диск" \
  "Выход")

case "$CHOICE" in
  "Запустить Tor (anonsurf start)")
    sudo anonsurf start
    notify-send "🟢 Tor запущен"
    ;;
  "Остановить Tor (anonsurf stop)")
    sudo anonsurf stop
    notify-send "🔴 Tor остановлен"
    ;;
  "Запустить аудит (lynis)")
    sudo lynis audit system | zenity --text-info --width=600 --height=400
    ;;
  "Открыть документацию")
    xdg-open /home/secure/VigilOS/USAGE.md
    ;;
  "Установить на диск")
    sudo calamares
    ;;
  "Выход")
    exit 0
    ;;
esac