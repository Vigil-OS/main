#!/bin/sh
case "$2" in
    up)
        macchanger -r "$1" 2>/dev/null || true
        ;;
esac