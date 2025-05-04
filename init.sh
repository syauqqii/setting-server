#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run this script as root (use sudo)" >&2
  exit 1
fi

echo "🟡 Updating system packages..."
apt update -y && apt upgrade -y

echo "🟢 Installing essential packages..."
apt install -y neofetch nginx git curl software-properties-common

echo "🟡 Installing Node.js (LTS)..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt install -y nodejs

echo "🟢 Installing PM2 (Node.js Process Manager)..."
npm install -g pm2

echo "🟢 Installing Certbot with Nginx plugin..."
apt install -y certbot python3-certbot-nginx

echo "🟣 Installing optional utilities..."
apt install -y htop unzip fail2ban ufw zsh

echo "🔵 Installing Oh My Zsh for root..."
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "🔁 Setting Zsh as the default shell..."
chsh -s $(which zsh)

echo ""
echo "✅ Installation complete!"
neofetch
echo ""
echo "🔎 Versions:"
nginx -v
node -v
npm -v
pm2 -v
git --version
zsh --version