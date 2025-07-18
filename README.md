# Virtual HomeLab

## Objective

The primary objective of this Virtual HomeLab is to provide a safe, controlled environment to practice cybersecurity skills, test tools, and generate realistic data (logs, network traffic) for portfolio projects. It is designed to work on both my Windows 11 Desktop and my MacBook Air M1 using VMware Fusion Player, supporting portability and consistent development workflows.

### Skills Learned

- **Virtualization and VM Management:** Creating and configuring multiple operating systems using VMware Fusion Player.
- **Networking Fundamentals:** Designing and managing internal VM networks for safe testing and isolation.
- **OS Hardening:** Practicing security configurations on Linux.
- **Log Generation and Analysis:** Generating realistic logs for analysis projects.
- **Automation and Scripting:** Documenting repeatable installation and configuration steps.
- **Professional Documentation:** Writing clear, professional technical documentation suitable for sharing with employers.

### Tools Used

- **VMware Fusion Player (Free):** Virtualization platform on both Windows and Mac.
- **Kali Linux ISO:** Offensive security and testing environment.
- **Ubuntu Server ISO:** Target system (CLI-only) for hardening, logging, and service simulation.
- **Linux Command Line:** Bash scripting and configuration.

## Steps

1. **Clone the Repository:**
   - Navigate to your desired directory and run:
     ```bash
     git clone https://github.com/YourUsername/Virtual-HomeLab.git
     cd Virtual-HomeLab
     ```

2. **Download ISO Images:**
   - **Kali Linux:** [https://www.kali.org/get-kali/](https://www.kali.org/get-kali/)
     - Choose appropriate architecture (x86_64 for Windows host, ARM64 for Mac M1).
   - **Ubuntu Server 22.04:** [https://ubuntu.com/download/server](https://ubuntu.com/download/server)
     - Choose appropriate architecture.

3. **Create Virtual Machines in VMware Fusion Player:**
   - Allocate resources:
     - 2–4GB RAM per VM
     - 1–2 CPU cores
     - 20–40GB dynamic disk
   - Mount the appropriate ISO.
   - Install the OS with documented user credentials.
   - Apply updates.

4. **Configure Networking:**
   - Use NAT for internet access.
   - Optionally configure Host-Only or Custom networks for VM-to-VM testing.
   - Document assigned static or DHCP IP addresses.

5. **Snapshot Baseline States:**
   - Clean install snapshot.
   - Post-hardening snapshot.
   - Ready-to-test snapshot.

6. **Install Tools:**
   - Kali Linux:
     - Nmap
     - netcat-openbsd
     - python3-scapy
     - metasploit-framework
   - Ubuntu:
     - UFW
     - fail2ban
     - rsyslog
     - net-tools
     - vim, nano, htop, curl, wget

7. **Document Configuration:**
   - VM names and purpose.
   - IP addresses and networking details.
   - Usernames and passwords (safe to share if non-sensitive).
   - Installed packages and versions.
   - Notes on post-install steps.

8. **Automate Where Possible:**
   - Bash scripts for:
     - System updates
     - Installing Kali tools
     - Installing Ubuntu tools
     - Exporting package lists
     - Mounting shared folders
   - Stored in the /scripts folder with README.
   - Documented usage instructions included.

9. **Export or Backup VMs:**
   - Optional for sharing between hosts or archiving.

10. **Maintain Documentation in Repo:**
    - `/docs` folder containing:
      - kali_setup.md
      - ubuntu_setup.md
      - kali_package_list.txt
      - ubuntu_package_list.txt
    - `/scripts` folder with automation scripts.

---

## Problems Encountered

- **Network Configuration Decisions**
    - Issue: Choosing between NAT and Host-Only networking for VMs.
    - Resolution:
        - Used **NAT** for initial setup, package installation, and updates.
        - Documented that **Host-Only** can be switched on later for isolated attack simulations.
- **VMware Shared Folders Did Not Auto-Mount**
    - Issue: After installing open-vm-tools, shared folders were not automatically mounted in Kali or Ubuntu.
    - Solution:
        - Installed `open-vm-tools` and `open-vm-tools-desktop` in Kali.
        - Used `vmhgfs-fuse` command to manually mount shared folders:

          ```bash
          sudo vmhgfs-fuse .host:/ /mnt/hgfs -o allow_other
          ```
- **Kali Package Installation Error**
    - Issue: The command `sudo apt install netcat` failed with "No installation candidate."
    - Cause: Kali splits netcat into explicit variants.
    - Solution: Installed `netcat-openbsd` instead:
        
        ```bash
        sudo apt install netcat-openbsd
        ```
    - Documented the corrected install command in automation scripts.

---

## Results

- Successfully provisioned a consistent Virtual HomeLab on both Windows 11 Desktop and MacBook Air M1.
- Created two VMs (Kali Linux with GUI, Ubuntu Server CLI-only) with equivalent functionality on both hosts.
- Established networking for testing and log generation.
- Enabled safe, controlled environment for all future portfolio projects.
- Exported package lists from both VMs for reproducibility.
- Shared folders used to move package_list.txt to host for documentation.

---

## License

MIT License

---

## Contact

Author: Jonathan Perez  
GitHub: [Jawnzee](https://github.com/Jawnzee)
