# Teams-Login-Problem-FIX
Rješavanje Login problema Microsoft Teams aplikacije
# Otvori PowerShell i pokreni:
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/SHB2025/Teams-Login-Problem-FIX/refs/heads/main/Teams-login-fix-powershell.ps1" | Invoke-Expression

## Problem sa prijavom u Microsoft Teams?
Ako Microsoft Teams prikazuje grešku poput:
An unexpected error occurred. Correlation Id: 9237a08e-5534-4240-8cd9-10109cf61c6f Code: 0


Ova PowerShell skripta automatski:
- Zatvara Teams aplikaciju
- Briše sve relevantne cache foldere (legacy i new Teams)
- Ponovo pokreće Teams

Radi na Windows 10 i 11, za sve verzije Teams klijenta.

---

## Kako koristiti

### 1. Pokreni PowerShell kao korisnik (nije potrebno admin pravo)

### 2. Pokreni skriptu direktno sa GitHub-a:
```powershell
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/SHB2025/Teams-Login-Problem-FIX/refs/heads/main/Teams-login-fix-powershell.ps1" | Invoke-Expression
```
📺 YouTube video
🎥 Pogledaj korak-po-korak vodič:

🔐 Sigurnosna napomena
Skripta ne prikuplja podatke, ne mijenja sistemske postavke i koristi se isključivo za lokalno čišćenje cache-a Microsoft Teams aplikacije.

🌍 English

Microsoft Teams Login Error?
If you're seeing errors like:
An unexpected error occurred. Correlation Id: 9237a08e-5534-4240-8cd9-10109cf61c6f Code: 0

This PowerShell script will:
- Close Teams
- Clear all cache folders (legacy and new Teams)
- Restart Teams automatically
Works on Windows 10 and 11.

---

## How to Run
### 1. Open PowerShell (no admin rights needed)
### 2. Run the script directly from GitHub:
```powershell
Invoke-RestMethod -Uri "https://raw.githubusercontent.com/SHB2025/Teams-Login-Problem-FIX/refs/heads/main/Teams-login-fix-powershell.ps1" | Invoke-Expression
```
📺 YouTube Tutorial
Watch the full walkthrough:

🔐 Security Note
This script does not collect data or modify system settings. It only clears local cache folders used by Microsoft Teams.

