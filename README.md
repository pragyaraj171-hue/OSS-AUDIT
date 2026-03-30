# OSS-AUDIT
Open Source Audit project for OSS NGMC course including Linux shell scripts and analysis of open-source software.

## Student Information
Name: Pragya Raj  
Registration Number: 24MIP10105  
Course: Open Source Software (OSS NGMC)  
Project: Open Source Audit

## Chosen Software
Software Name: Git  
Category: Version Control System  
License: GPL v2  

Git is a distributed version control system created by Linus Torvalds. It helps developers track code changes, collaborate with others, and manage software projects efficiently.

## Shell Scripts Description

### Script 1 – System Identity Report
This script displays basic system information including:
- Linux distribution name
- Kernel version
- Current logged-in user
- System uptime
- Current date and time
- Open-source license of the OS

### Script 2 – FOSS Package Inspector
This script checks whether the chosen software package is installed on the system.  
If installed, it displays:
- Version
- License
- Package summary.

### Script 3 – Disk and Permission Auditor
This script checks important Linux directories and displays:
- Directory size
- Owner
- Group
- Permissions.

### Script 4 – Log File Analyzer
This script analyzes a log file and counts how many times a keyword (such as ERROR or WARNING) appears in the log.

### Script 5 – Open Source Manifesto Generator
This script asks the user three questions about open source philosophy and generates a personal manifesto saved as a text file.

## How to Run the Scripts

1. Clone the repository

git clone https://github.com/yourusername/oss-audit-rollnumber.git

2. Navigate to the project directory

cd oss-audit-rollnumber

3. Give execution permission to scripts

chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh

4. Run the scripts

./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh

### Script 5 – Open Source Manifesto Generator
This script asks the user three questions about open source philosophy and generates a personal manifesto saved as a text file.


## Dependencies

The scripts require the following tools installed on a Linux system:

- bash shell
- grep
- awk
- du
- uname
- uptime
- dpkg or rpm (depending on Linux distribution)

These tools are available by default in most Linux distributions such as Ubuntu, Fedora, and CentOS.
