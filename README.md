# VaporWareXE Lite

A curated directory of security and privacy tools with a simple PowerShell menu. Browse vetted resources across malware analysis, encryption, VPNs, secure browsers, and more.

## What is this?

VaporWareXE Lite is basically a organized list of security tools that opens in a PowerShell menu. Pick what you need, it opens in your browser. That's it.

**It doesn't:**
- Install anything
- Change system settings
- Mess with your registry
- Need admin rights
- Collect any data

**It does:**
- Show you links to security tools
- Open them in your browser
- Display system info if you want
- Look cool with ASCII art

## Quick Start

Run it directly from GitHub:

```powershell
irm https://raw.githubusercontent.com/VaporwareXE/Vaporware-XE-Lite/refs/heads/main/Vaporware.XE.Lite.ps1 | iex
```

If you get execution policy errors:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; irm https://raw.githubusercontent.com/VaporwareXE/Vaporware-XE-Lite/refs/heads/main/Vaporware.XE.Lite.ps1 | iex
```

Or download it and run locally:

```powershell
.\VaporWareXE-Lite.ps1
```

## Requirements

- Windows with PowerShell 5.1 or newer

## What's Inside

**Scanning & Analysis**
- File scanners (VirusTotal, ANY.RUN, Hybrid Analysis)
- Antivirus tools
- Online malware analysis

**Network & Privacy**
- VPN services (ProtonVPN, Mullvad, IVPN)
- DNS providers (Quad9, NextDNS)
- Network security tools

**Browsers & Extensions**
- Privacy browsers (LibreWolf, Tor, Mullvad Browser)
- Extensions (uBlock Origin, Privacy Badger, NoScript)
- Frontend alternatives (LibRedirect)

**Communication**
- Encrypted messaging (Signal, Session, SimpleX)
- Private email (ProtonMail, Tutanota)
- Email aliasing

**Security Tools**
- Password managers (Bitwarden, KeePassXC)
- 2FA tools (Aegis, 2FAS)
- Encryption (VeraCrypt, Cryptomator)

**System Management**
- Uninstallers (Revo, Bulk Crap Uninstaller)
- Debloaters for Windows
- Android tools

**Mobile**
- Custom Android ROMs (GrapheneOS, CalyxOS, LineageOS)
- Privacy-focused apps

**Operating Systems**
- Linux distros (Kali, Parrot, Tails, Qubes)
- Bootloader tools (Ventoy, Rufus)
- Router firmware (OpenWrt, pfSense)

**Privacy Tools**
- Search engines (Brave Search, Qwant, SearxNG)
- Cloud storage (Proton Drive, Filen)
- Metadata removal tools

Plus a bunch more stuff organized by category.

## How to Use

1. Run the script
2. Pick a category by number
3. Pick a subcategory
4. Pick the tool you want
5. It opens in your browser
6. Type `B` to go back

Type `H` in the main menu for help, `S` for system info, `Q` to quit.

## Should I trust this?

The script is open source. Read it yourself before running - it's just PowerShell, nothing sketchy. All it does is open links in your browser.

That said, you're downloading and running a script from the internet. If you're paranoid (and you should be), download it first and review the code.

## Links to the Tools

The script just opens websites. It doesn't vouch for them or guarantee they're safe. Do your own research before using anything.

Some tools are free, some aren't. Some need accounts, some don't. Check their sites for details.

## Contributing

Got a tool that should be on here? Open an issue or PR. Just make sure it's actually privacy/security focused and not sketchy.

## Credits

Made by Bloodware  
https://linkr.it/blood

## License

Do whatever you want with it. Not my problem.

---

**Disclaimer:** This is a directory, not a recommendation. Research tools before using them. Stay safe out there.
