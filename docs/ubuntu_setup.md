# Ubuntu VM Configuration

## General Configuration
- VM Name: Ubuntu-Win11-x86_64
- Host: Windows 11
- VMware Version: 17.6.3 build-24583834

## OS Details
- OS: ubuntu-24.04.2 (x86_64)
- ISO: ubuntu-24.04.2-live-server-amd64.iso
- Install Date: July 2025

## VM Hardware Settings
- CPU: 2 cores
- RAM: 4 GB
- Disk: 40 GB (dynamic)
- Network Adapter: NAT (for updates and package installs)

## Networking Configuration
- Default: NAT for internet access
- Notes: 
  - Verified connectivity with `ping -c 3 google.com`
  - Can switch to Host-Only for isolated attack simulations

## Snapshots Created
- Name: Clean Install
- Description: Base OS install with updates applied. No extra tools.
- Date: July 2025

## Installed Packages
- System fully updated with:
  ```bash
  sudo apt update && sudo apt upgrade -y
- Security tools installed:
  ```bash
  sudo apt install -y ufw fail2ban rsyslog net-tools vim nano htop curl wget
- VMware tools installed:
  ```bash
  sudo apt install open-vm-tools -y

## Package List
- Full inventory saved to:
  ```bash
  /docs/ubuntu_package_list.txt
- Created with:
  ```bash
  dpkg --get-selections > package_list.txt

## Notes / Problems Encountered
- No GUI installed (intentional for server use).
- Used terminal-only interface for all configuration.
- VMware shared folders mounted manually with:
  ```bash
  sudo vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other
