#!/usr/bin/env bash

set -e

REPO="https://github.com/piotrandrzejmunik-spec/echo-x-signature-banner-pack.git"
TARGET="$HOME/.echo-x-signature-pack"

echo "[ Echo‑X Installer ]"
echo "→ Installing Signature Banner Pack..."

rm -rf "$TARGET"
git clone "$REPO" "$TARGET" >/dev/null 2>&1

mkdir -p "$HOME/.local/bin"

cat << 'EOF' > "$HOME/.local/bin/echo-x-banner"
#!/usr/bin/env bash
STYLE="$1"
case "$STYLE" in
  holo|gold|blackops|neon|grid|operator|raw)
    cat "$HOME/.echo-x-signature-pack/banner.sh"
    ;;
  *)
    echo "Usage: echo-x-banner [holo|gold|blackops|neon|grid|operator|raw]"
    exit 1
    ;;
esac
EOF

chmod +x "$HOME/.local/bin/echo-x-banner"

echo "→ Installation complete."
echo "Run: echo-x-banner holo"
