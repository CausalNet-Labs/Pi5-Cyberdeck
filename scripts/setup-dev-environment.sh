#!/usr/bin/env bash
# setup-dev-environment.sh
# Consolidates the Chapter 10 (Development Environment) install steps:
# Git, Python, Docker, VS Code. Review each section before running —
# some steps (Docker group membership) require logging out and back in.
#
# Usage: ./setup-dev-environment.sh

set -euo pipefail

echo "== Git =="
sudo apt update
sudo apt install -y git
git --version
read -rp "Git user.name: " GIT_NAME
read -rp "Git user.email: " GIT_EMAIL
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
  ssh-keygen -t ed25519 -C "$GIT_EMAIL"
  echo "Add the resulting public key (~/.ssh/id_ed25519.pub) to your Git host."
fi

echo
echo "== Python =="
sudo apt install -y python3 python3-pip python3-venv
python3 --version

echo
echo "== Docker =="
curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
sudo sh /tmp/get-docker.sh
sudo usermod -aG docker "$USER"
echo "Log out and back in, then run: docker run hello-world"

echo
echo "== VS Code =="
sudo apt update
sudo apt install -y code || echo "code not available via apt directly — install via the official Microsoft apt repository for arm64, per code.visualstudio.com."

echo
echo "Done. See Chapter 10.5 to clone and set up the OpenAELM project itself."
