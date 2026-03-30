# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Amrat@ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Amrat
Home Directory:     /home/Amrat
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 18:21:47 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```

---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Amrat@ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: git is INSTALLED on this Ubuntu 22.04.3 LTS system.
Version: 2.34.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: Git is a free and open source distributed version control system.
 - Linux: Linux is a free and open source operating system.
 - Vim: Vim is a free and open source text editor.
 - GCC: GCC is a free and open source compiler.
================================================================================
```

---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Amrat@ubuntu-server:~/Git$ ./03-auditor.sh
================================================================================
                   Git AUDIT - DIRECTORY AUDITOR                 
================================================================================
/etc,16K,755,root
/var/log,16K,755,root
/usr/bin,16K,755,root
/home,16K,755,Amrat
/.git,16K,755,Amrat
/.gitconfig,16K,755,Amrat
================================================================================
```

---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Amrat@ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Git AUDIT - LOG FILE ANALYZER                 
================================================================================
Analyzing log file: /var/log/syslog
Searching for keyword: error
Found 10 matches
Last 5 matches:
Mar 30 18:20:01 ubuntu-server CRON[1234]: error
Mar 30 18:19:01 ubuntu-server CRON[1233]: error
Mar 30 18:18:01 ubuntu-server CRON[1232]: error
Mar 30 18:17:01 ubuntu-server CRON[1231]: error
Mar 30 18:16:01 ubuntu-server CRON[1230]: error
================================================================================
```

---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Amrat@ubuntu-server:~/Git$ ./05-manifesto.sh
================================================================================
                   Git AUDIT - MANIFESTO GENERATOR                 
================================================================================
What is your name? Amrat
What is your favorite open source project? Git
Why do you contribute to open source? Because I believe in the power of open source.
My name is Amrat, and I believe in the power of open source. My favorite project is Git, and I contribute because Because I believe in the power of open source.
Manifesto saved to Amrat.txt
================================================================================
```