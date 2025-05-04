# 🛠️ Server Auto Setup Script

Automate your Ubuntu server initialization with essential tools like Node.js, Nginx, Certbot, Git, and Zsh — all in one command.

## ⚡ Quick Start

```bash
curl -sSL https://raw.githubusercontent.com/syauqqii/setting-server/main/init.sh | bash
```

## ✅ What It Installs

- System update & upgrade
- `neofetch`, `nginx`, `git`, `curl`, `zsh`, `pm2`
- Node.js (LTS)
- Certbot (Let's Encrypt SSL)
- Optional tools: `htop`, `ufw`, `fail2ban`, `unzip`
- Oh My Zsh (for better terminal UX)

## 🧠 Notes

- Default shell will be changed to Zsh (root only)
- SSL setup with Certbot requires domain + open ports (80/443)

## 📁 File Structure

```bash
.
├── init.sh
└── README.md
``` 