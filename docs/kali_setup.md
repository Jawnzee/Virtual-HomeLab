# Kali VM Configuration

## General Configuration
- VM Name: Kali-Win11-x86_64
- Host: Windows 11
- VMware Version: 17.6.3 build-24583834

## OS Details
- OS: Kali Linux 2025.2 (x86_64)
- ISO: kali-linux-2025.2-installer-amd64.iso
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
- Description: Fresh Kali install with updates. No extra tools yet.
- Date: July 2025

## Installed Packages
- System fully updated with:
  ```bash
  sudo apt update && sudo apt upgrade -y
- Security tools installed:
  ```bash
  sudo apt install -y nmap netcat-openbsd python3-scapy metasploit-framework
- VMware tools installed:
  ```bash
  sudo apt install open-vm-tools open-vm-tools-desktop -y

## Package List
- Full inventory saved to:
  ```bash
  /docs/kali_package_list.txt
- Created with:
  ```bash
  dpkg --get-selections > package_list.txt

## Notes / Problems Encountered
- VMware shared folders did not auto-mount by default.
- Solution:
  ```bash
  sudo vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other
