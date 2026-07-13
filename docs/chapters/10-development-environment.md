# Chapter 10: Development Environment

**Learning objectives:** Install and verify the full development toolchain — Git, Docker, VS Code, Python, and the OpenAELM project — as a working end-to-end workflow.  
**Tools & materials:** None additional — software only, on top of Chapter 9's OS baseline.  
**Estimated time:** 1–2 hours

## 10.1 Git

```bash
git --version
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
ssh-keygen -t ed25519 -C "your_email@example.com"
# Add the resulting public key to your Git host (GitHub/GitLab/etc.)
```

## 10.2 Python

```bash
sudo apt install -y python3 python3-pip python3-venv
python3 --version
```

## 10.3 Docker

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
# log out and back in, then:
docker run hello-world
```

Docker on Raspberry Pi OS (arm64) runs natively for most images, but always confirm any image you pull publishes an arm64/aarch64 variant — some third-party images are amd64-only and will either fail or run emulated at a heavy performance cost.

## 10.4 VS Code

```bash
sudo apt update
sudo apt install -y code
# If unavailable via apt directly, install via the official
# Microsoft apt repository for arm64, per code.visualstudio.com.
```

## 10.5 OpenAELM

```bash
mkdir -p ~/Projects
cd ~/Projects
git clone <your-openaelm-repo-url> openaelm
cd openaelm
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt # if applicable to your repo
```

- VERIFY BEFORE CUTTING: Replace <your-openaelm-repo-url> with your actual repository URL — this was not

specified in the source handoff material, so it isn't invented here.

## 10.6 Remote Development

The Remote - SSH VS Code extension lets you edit and run code physically on the cyberdeck from a laptop, or vice versa — useful given the Huntsman Mini's compact 60% layout for longer writing sessions. This also lets the cyberdeck function as a headless build/test target while you develop from a more ergonomic setup, and switch to the deck's own keyboard/screen only when needed.

## 10.7 Backups

Beyond Git's own history, maintain an off-device backup of the full Projects directory and dotfiles on a schedule (see Chapter 12's maintenance schedule) — a portable device is more exposed to loss/damage than a desk-bound machine, which raises the cost of skipping this step.

## 10.8 Automation Scripts

As your workflow stabilizes, consider a small personal setup script (setup.sh) capturing the exact package list and dotfile symlinks from this chapter, checked into your own dotfiles repository. This turns a future reflash (Chapter 12 SSD replacement, or a clean reinstall) from a re-read of this chapter into a single script run.

## 10.9 Verify the Workflow End-to-End

Before considering software setup complete: edit a file in VS Code, commit and push it via Git over SSH, build and run a Docker container, and run a basic Python script inside your OpenAELM virtual environment — all without leaving the device. Chapter Summary

- The dev toolchain (Git, Python, Docker, VS Code, OpenAELM) is installed and verified as one connected workflow, not isolated installs.
- Remote development extends the deck's usefulness beyond its own keyboard/screen when useful.
- Backups and an automation script reduce the cost of a future reflash or hardware failure.

Cross-references: See Chapter 12 for backup scheduling, Chapter 15 for a full Linux command reference appendix.
