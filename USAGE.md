# 📖 Руководство по использованию VigilOS

## 🔐 Вход в систему
- Пользователь: `secure`
- Пароль: `toor`

## 🌐 Анонимность
```bash
anonsurf start   # включить Tor
anonsurf stop    # отключить
anonsurf status  # проверить статус
```

## 💾 Persistence 

    Второй раздел на USB — ext4, метка persistence
    Файл /persistence.conf: /home encrypted
    При загрузке выберите Live with persistence
     

## 🛠️ Инструменты 

    Пентест: nmap, sqlmap, metasploit-framework, burpsuite
    Анализ: wireshark, tcpdump, rkhunter, lynis
    Шифрование: veracrypt, gpg, cryptsetup
    Сеть: tor, i2p, dnscrypt-proxy
     

## 🖥️ GUI 

    XFCE — лёгкая среда
    Все инструменты в меню: Applications → Security
    Установщик: Applications → System → Install SecureOS
     

## 🧹 Амнезия 

При выключении: 

    Удаляются /tmp, /home/secure/.cache, логи
    Ничего не остаётся на носителе
     