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
- **Ubuntu Server ISO:** Target system for hardening, logging, and service simulation.
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
     - Nmap, Scapy, Metasploit Framework, etc.
   - Ubuntu:
     - UFW, fail2ban, syslog utilities.

7. **Document Configuration:**
   - VM names and purpose.
   - IP addresses and networking details.
   - Usernames and passwords (safe to share if non-sensitive).
   - Installed packages and versions.
   - Notes on post-install steps.

8. **Automate Where Possible:**
   - Bash scripts for updates and installations.
   - Documented command history.
   - Include any reusable setup scripts in this repo.

9. **Export or Backup VMs:**
   - Optional for sharing between hosts or archiving.

10. **Maintain Documentation in Repo:**
    - `/docs` folder containing:
      - kali_setup.md
      - ubuntu_setup.md
      - network_diagram.png or .drawio

---

## Problems Encountered

- Document challenges such as:
  - M1 virtualization architecture differences.
  - Network configuration issues.
  - Resource allocation limits.

---

## Results

- Successfully provisioned a consistent Virtual HomeLab on both Windows 11 Desktop and MacBook Air M1.
- Created two VMs (Kali Linux and Ubuntu) with equivalent functionality on both hosts.
- Established networking for testing and log generation.
- Enabled safe, controlled environment for all future portfolio projects.

---

## License

MIT License

---

## Contact

Author: Jonathan Perez  
GitHub: [Jawnzee](https://github.com/Jawnzee)
