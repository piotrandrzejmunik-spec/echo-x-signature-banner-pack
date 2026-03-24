#!/data/data/com.termux/files/usr/bin/bash

NAME=$(cat ~/echo-x-core/client/name.txt)
STYLE=$(cat ~/echo-x-core/client/style.txt)

echo ""

case "$STYLE" in
    1)
        echo "=== OPERATOR MODE: $NAME ==="
        ;;
    2)
        echo "< SYSTEM ACCESS: $NAME >"
        ;;
    3)
        echo "[:: ACTIVE PROFILE → $NAME ::]"
        ;;
    *)
        echo "[ OPERATOR MODE: $NAME ]"
        ;;
esac

echo ""
