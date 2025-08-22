# **Danger**

## **What is Danger?**
Danger is an **advanced tool** Allowing you to know when any user logs into your device, **Danger** communicates with the Gmail service via SMTP protocol. It then sends a notification alert to your personal email containing the intruder's login information.  

![Danger](assets/Danger.gif)

---

# **Features**
- **collects username**
- **machine name**   
- **date** 
- **public IP** 
- **geolocation**  

---

# **Setup & Installation**
## **1. Install Required Dependencies**
Create a new Gmail account and enable two-factor authentication. You can request an **AppPassword** from the Gmail service, then enter your password in the PowerShell script.

---

## **2. Ps1 to .Exe**
### **Open the Windows Terminal**
Run:
```bash
.\Danger.ps1
```

### **Convert to executable**
Run:
```bash
Import-Module ps2exe
```

### **Compile your executable**
Run:
```bash
ps2exe .\Danger.ps1
```

### **Place executable in startup folder**
Windows+R:
```bash
shell:common startup
```

---

# **Author Information**
- **Author:**[josh lopez](https://github.com/senseidev09/senseidev09)  

