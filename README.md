# 🛡️ VigilOS — *Always Watching. Always Secure.*

> **VigilOS** — безопасный, анонимный и инструментальный дистрибутив на базе Debian.  
> Вдохновлён Kali Linux, Tails и Parrot OS.  
> Идеален для пентеста, цифровой гигиены и анонимной работы.

[![Release](https://img.shields.io/github/v/release/Vigil-OS/main?include_prereleases&label=Version&color=blue)](https://github.com/Vigil-OS/main/releases)
[![Build Status](https://img.shields.io/github/actions/workflow/status/Vigil-OS/main/build.yml?branch=main&label=Build)](https://github.com/Vigil-OS/main/actions)
[![License](https://img.shields.io/github/license/Vigil-OS/main)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/Vigil-OS/main?style=social)](https://github.com/Vigil-OS/main)
[![Website](https://img.shields.io/badge/🌐-Website-green)](https://vigil-os.github.io/)

---

## 🚀 Особенности

✅ **Live-режим с амнезией** — ничего не сохраняется  
✅ **Tor + I2P по умолчанию** — анонимность из коробки  
✅ **Предустановленные инструменты** — nmap, metasploit, sqlmap, wireshark и др.  
✅ **Зашифрованное хранилище (persistence)**  
✅ **Скрипт `anonsurf`** — простое включение анонимности  
✅ **Установщик Calamares** — установка на диск  
✅ **Графическая среда XFCE** — лёгкая и удобная  
✅ **Поддержка Raspberry Pi** — с Wi-Fi, Bluetooth и GPU-ускорением  

---

## 💿 Поддерживаемые платформы

| Платформа | Формат | Назначение |
|----------|--------|-----------|
| amd64 | ISO (UEFI+BIOS) | Современные ПК |
| i686 | ISO (BIOS) | Старые 32-битные ПК |
| arm64 | IMG | Raspberry Pi 4/5, серверы |
| armhf | IMG | Raspberry Pi 3 и ниже |

---

## 📥 Скачать

➡️ [Последняя версия (v0.2)](https://github.com/Vigil-OS/main/releases/tag/os)

---

## 🖥️ Как использовать

### 1. Запись на USB
```bash
dd if=live-image-amd64.hybrid.iso of=/dev/sdX bs=4M status=progress && sync
```

### 2. Загрузка 

    Выберите в BIOS/UEFI загрузку с USB.
    Варианты:
        Live (amnesia) — полная амнезия
        Live with persistence — с сохранением данных
        Install to disk — установка через Calamares
         
### 3. Вход 

    Пользователь: secure
    Пароль: toor
     

### 4. Включить анонимность 
```bash
anonsurf start
```

## 🍓 Raspberry Pi 

Полная поддержка Pi 3/4/5 с Wi-Fi, Bluetooth и GPU-ускорением.
Подробная инструкция: INSTALL-RPI.md  

## 📄 Лицензия 

MIT — см. LICENSE  
