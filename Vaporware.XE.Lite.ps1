#Requires -Version 5.1

$Host.UI.RawUI.WindowTitle = "VaporWareXE Lite v3.0"
if ($Host.UI.RawUI.BackgroundColor -ne $null) {
    $Host.UI.RawUI.BackgroundColor = "Black"
    $Host.UI.RawUI.ForegroundColor = "White"
}
Clear-Host

Write-Host ""
Write-Host "  VaporWareXE Lite v3.0" -ForegroundColor White
Write-Host ""
Write-Host "  NOTE: This is uncompleted, do not expect a lot." -ForegroundColor Yellow
Write-Host "  preferred as administrator but you running it as non-administrator is completely fine" -ForegroundColor Yellow
Write-Host "  suggested to use Powershell Verion 5.1 or Version 7" -ForegroundColor Yellow
Write-Host ""
Write-Host "  Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
Clear-Host

$script:Resources = @{
    "Scanning & Analysis" = @{
        "File Scanning & Malware Analysis" = @{
            "ANY.RUN" = "https://app.any.run/",
            "Hybrid Analysis" = "https://hybrid-analysis.com/",
            "IRIS-H" = "https://iris-h.services/pages/submit",
            "Intezer Analyze" = "https://analyze.intezer.com/",
            "Joe Sandbox" = "https://www.joesandbox.com/",
            "Manalyzer" = "https://manalyzer.org/",
            "Metadefender" = "https://metadefender.com/",
            "Pikker Sandbox" = "https://sandbox.pikker.ee/",
            "PolySwarm" = "https://polyswarm.network/",
            "TyLabs Scan" = "https://scan.tylabs.com/",
            "Checkpoint ThreatPoint" = "https://threatpoint.checkpoint.com/ThreatPortal/emulation",
            "SecondWrite" = "https://webportal.secondwrite.com/",
            "Talos File Reputation" = "https://talosintelligence.com/talos_file_reputation/",
            "VirusTotal" = "https://www.virustotal.com/gui/home/upload",
            "Kaspersky OpenTIP" = "https://opentip.kaspersky.com/",
            "Jotti's Malware Scan" = "https://virusscan.jotti.org/",
            "URLVoid" = "https://www.urlvoid.com/",
            "URLScan.io" = "https://urlscan.io/",
            "Quttera" = "https://quttera.com/",
            "FileScan.io" = "https://www.filescan.io/scan",
            "ViruScan" = "https://www.virscan.org/",
            "Sucuri SiteCheck" = "https://sitecheck.sucuri.net/",
            "NordVPN File Checker" = "https://nordvpn.com/file-checker/",
            "Dr.Web vms" = "https://vms.drweb.com/online/",
            "ScanMalware" = "https://scanmalware.com/",
            "Internxt Virus Scanner" = "https://internxt.com/virus-scanner",
            "DynamiteLab" = "https://dynamitelab.com/",
            "VMRay" = "https://www.vmray.com/",
            "Malshare" = "https://malshare.com/",
            "Acronis" = "https://www.acronis.com/",
            "EmailVeritas File Checker" = "https://www.emailveritas.com/file-checker",
            "Watchdog Online Scanner" = "https://watchdog.com/online-malware-scanner/",
        }
        "Antivirus & System Scanners" = @{
            "Bitdefender Free" = "https://www.bitdefender.com/en-us/consumer/free-antivirus",
            "Dr.Web CureIt" = "https://free.drweb.com/download+cureit+free/",
            "HitmanPro" = "https://www.hitmanpro.com/en-us",
            "ClamAV" = "https://www.clamav.net/",
            "MalwareBytes" = "https://www.malwarebytes.com/",
        }
    }
    
    "Network & Privacy" = @{
        "VPN Services" = @{
            "ProtonVPN" = "https://protonvpn.com/",
            "Mullvad VPN" = "https://mullvad.net/",
            "IVPN" = "https://www.ivpn.net/",
            "NordVPN" = "https://nordvpn.com/",
            "Surfshark" = "https://surfshark.com/",
            "ExpressVPN" = "https://www.expressvpn.com/",
        }
        "DNS Providers" = @{
            "Quad9" = "https://quad9.net/",
            "NextDNS" = "https://nextdns.io/",
            "Cloudflare DNS" = "https://www.cloudflare.com/application-services/products/dns/",
            "AdGuard DNS" = "https://adguard-dns.io/en/public-dns.html",
            "ControlD Free DNS" = "https://controld.com/free-dns",
            "DNS.Watch" = "https://dns.watch/",
            "RethinkDNS" = "https://rethinkdns.com/",
            "OpenDNS" = "https://www.opendns.com/",
            "dns0.eu" = "https://www.dns0.eu/"
            "BlahDNS" = "https://blahdns.com/",
            "Mullvad DNS" = "https://mullvad.net/en/help/dns-over-https-and-dns-over-tls",
        }
        "Network Security Tools" = @{
            "Wireshark" = "https://www.wireshark.org/",
            "Nmap" = "https://nmap.org/",
            "Little Snitch (macOS)" = "https://www.obdev.at/products/littlesnitch/",
            "GlassWire" = "https://www.glasswire.com/",
            "Portmaster" = "https://safing.io/",
            "Pi-hole" = "https://pi-hole.net/",
            "AdGuard Home" = "https://adguard.com/en/adguard-home.html",
        }
    }
    "Development & Analysis" = @{
        "Development Tools" = @{
            "VSCodium" = "https://vscodium.com/",
            "Blender" = "https://www.blender.org",
        }
        "Reverse Engineering Tools" = @{
            "IDA (auth.lol)" = "https://auth.lol/ida/",
            "dnSpy" = "https://github.com/dnSpy/dnSpy/releases",
            "ILSpy" = "https://github.com/icsharpcode/ILSpy/releases",
            "ghidra" = "https://github.com/NationalSecurityAgency/ghidra",
            "x64dbg" = "https://x64dbg.com/"
            "Cutter RE" = "https://cutter.re/",
            "radare" = "https://rada.re/n/",
            "Binary Ninja" = "https://binary.ninja/",
            "Detect it easy" = "https://github.com/horsicq/DIE-engine",
            "PE bear" = "https://github.com/hasherezade/pe-bear",
        }
        "Sysinternals" = @{
            "Sysinternals Suite" = "https://learn.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite",
            "Process Explorer" = "https://learn.microsoft.com/en-us/sysinternals/downloads/process-explorer",
            "Process Monitor" = "https://learn.microsoft.com/en-us/sysinternals/downloads/procmon",
            "Autoruns" = "https://learn.microsoft.com/en-us/sysinternals/downloads/autoruns",
            "PsExec" = "https://learn.microsoft.com/en-us/sysinternals/downloads/psexec",
            "PsKill" = "https://learn.microsoft.com/en-us/sysinternals/downloads/pstools",
            "RAMMap" = "https://learn.microsoft.com/en-us/sysinternals/downloads/rammap",
            "VMMap" = "https://learn.microsoft.com/en-us/sysinternals/downloads/vmmap",
            "TCPView" = "https://learn.microsoft.com/en-us/sysinternals/downloads/tcpview",
            "Handle" = "https://learn.microsoft.com/en-us/sysinternals/downloads/handle",
            "Strings" = "https://learn.microsoft.com/en-us/sysinternals/downloads/strings",
            "SigCheck" = "https://learn.microsoft.com/en-us/sysinternals/downloads/sigcheck",
            "AccessChk" = "https://learn.microsoft.com/en-us/sysinternals/downloads/accesschk",
            "BlueScreenView (NirSoft)" = "https://www.nirsoft.net/utils/blue_screen_view.html",
            "Process Hacker" = "https://processhacker.sourceforge.io/"
        }
        }
    } 
    "Browsers & Extensions" = @{
        "Browsers" = @{
            "LibreWolf" = "https://librewolf.net/",
            "Tor Browser" = "https://www.torproject.org/",
            "Mullvad Browser" = "https://mullvad.net/en/browser",
            "GNU IceCat (Updates lag behind Firefox)" = "https://icecatbrowser.org/download.html",
            "Waterfox" = "https://www.waterfox.com/",
            "Ungoogled Chromium" = "https://github.com/ungoogled-software/ungoogled-chromium",
        }
        "Browser Extensions" = @{
            "AdNauseam (Bundled with uBlock)" = "https://adnauseam.io/",
            "Privacy Badger" = "https://privacybadger.org/",
            "HTTPS Everywhere" = "https://www.eff.org/https-everywhere",
            "uBlock Origin" = "https://ublockorigin.com/",
            "NoScript" = "https://noscript.net/",
            "LibreJS (Firefox)" = "https://addons.mozilla.org/en-US/firefox/addon/librejs/",
            "LocalCDN (Fork of Decentraleyes)" = "https://www.localcdn.org/",
            "Decentraleyes" = "https://decentraleyes.org/",
            "JShelter" = "https://jshelter.org/",
            "Privacy Possum" = "https://www.privacypossum.com/",
            "ClearURLs" = "https://clearurls.xyz/",
            "WebRTC Leak Prevent" = "https://addons.mozilla.org/en-US/firefox/addon/webrtc-leak-prevent/",
            "Firefox Multi-Account Containers" = "https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/",
            "Skip Redirect" = "https://addons.mozilla.org/en-US/firefox/addon/skip-redirect/",
            "FastForward (Link Shortener)" = "https://fastforward.team/",
            "Cookie-AutoDelete" = "https://github.com/Cookie-AutoDelete/Cookie-AutoDelete",
            "CanvasBlocker (Firefox)" = "https://addons.mozilla.org/en-US/firefox/addon/canvasblocker/",
            "Canvas Blocker (Chrome)" = "https://chromewebstore.google.com/detail/canvas-blocker-fingerprin/nomnklagbgmgghhjidfhnoelnjfndfpd",
            "Trace (Firefox)" = "https://addons.mozilla.org/en-US/firefox/addon/absolutedouble-trace",
            "uMatrix (Firefox)" = "https://addons.mozilla.org/en-US/firefox/addon/umatrix/",
            "Midnight Lizard" = "https://midnight-lizard.org/",
            "Violentmonkey" = "https://violentmonkey.github.io/",
            "Anti adblock killer (don't touch my adblocker)" = "https://reek.github.io/anti-adblock-killer/",
        }
        "Frontends" = @{
            "LibRedirect Extension" = "https://libredirect.github.io/",
        }
    }
    "Communication & Productivity" = @{
        "Communication" = @{
            "Signal" = "https://signal.org/",
            "Molly (Hardened Signal)" = "https://molly.im",
            "Jami" = "https://jami.net/",
            "Cwtch" = "https://docs.cwtch.im/",
            "Session" = "https://getsession.org/",
            "Element" = "https://element.io/en",
            "Briar" = "https://briarproject.org/",
            "SimpleX Chat" = "https://simplex.chat/",
            "Threema" = "https://threema.com/",
        }
        "Email Privacy" = @{
            "ProtonMail" = "https://proton.me/mail",
            "Tutanota" = "https://tutanota.com/",
            "Mailfence" = "https://mailfence.com/",
            "Posteo" = "https://posteo.de/",
            "SimpleLogin (Email Aliases)" = "https://simplelogin.io",
            "AnonAddy (Email Aliases)" = "https://anonaddy.com",
            "Mozilla Thunderbird" = "https://www.thunderbird.net/en-US/thunderbird/all",
            "Fairmail" = "https://f-droid.org/packages/eu.faircode.email",
            "PGP Key for email" = "https://f-droid.org/packages/org.sufficientlysecure.keychain",
        }
        "Productivity Software" = @{
            "LibreOffice" = "https://www.libreoffice.org/",
            "VLC" = "https://www.videolan.org/vlc",
            "Tenacity" = "https://tenacityaudio.org",
            "Nomacs" = "https://nomacs.org",
            "GIMP" = "https://www.gimp.org",
            "OBS" = "https://obsproject.com",
            "OpenShot" = "https://www.openshot.org",
            "Qalculate!" = "https://qalculate.github.io/downloads.html",
            "FlameShot" = "https://flameshot.org",
            "More Open Source Replacements" = "https://github.com/LibreWar/librealt"
        }
    }
    "System Management" = @{
        "Uninstallers" = @{
            "Revo Uninstaller" = "https://www.revouninstaller.com/",
            "Geek Uninstaller" = "https://geekuninstaller.com/",
            "Uninstalr" = "https://uninstalr.com/",
            "Bulk Crap Uninstaller" = "https://github.com/Klocman/Bulk-Crap-Uninstaller/releases",
            "HiBit Uninstaller" = "https://www.hibitsoft.ir/",
            "Uninstall Tool" = "https://crystalidea.com/uninstall-tool"
        }
        "System Debloaters" = @{
            "Win11Debloat" = "https://github.com/Raphire/Win11Debloat",
            "Windows10Debloater" = "https://github.com/Sycnex/Windows10Debloater",
            "Android Platform Tools" = "https://developer.android.com/tools/releases/platform-tools",
            "Android Debloater" = "https://github.com/oop7/Android-debloater/releases",
            "VTRL Debloat tool" = "https://vtrl.cc/",
            "ChrisTitusTech (CTT) Debloat tool" = "https://github.com/ChrisTitusTech/winutil",
            "Winaero" = "https://winaero.com/",
            "RemoveWindowsAI" = "https://github.com/zoicware/RemoveWindowsAI"
        }
    }
    "Mobile Systems" = @{
        "Android ROMs" = @{
            "LineageOS" = "https://lineageos.org/",
            "CalyxOS" = "https://calyxos.org/install/",
            "GrapheneOS" = "https://grapheneos.org/",
            "/e/OS" = "https://e.foundation/",
            "DivestOS" = "https://divestos.org/",
            "microG (Google Play Services Replacement)" = "https://github.com/microg/GmsCore/wiki"
        }
        "Android Security Tools" = @{
            "LinuxDroid" = "https://github.com/AryanVBW/LinuxDroid",
            "LibreTube" = "https://libretube.dev/",
            "Outertune" = "https://outertune.org/download-outertune/",
            "Android Security Assessment tools" = "https://github.com/rostomzed/Android-Security-Assessment-Tools",
            "DroidSheep Guard" = "https://droidsheep.info/download.html",
            "Prey" = "https://preyproject.com/"
        }
        "Android Privacy Tools" = @{
            "Adblock for Samsung Internet" = "https://play.google.com/store/apps/details?id=com.betafish.adblocksbrowser",
            "Aurora store" = "https://auroraoss.com/",
            "F-Droid" = "https://f-droid.org/",
            "NetGuard" = "https://netguard.me/",
            "RethinkDNS (Firewall & DNS)" = "https://rethinkdns.com/app",
            "Insular" = "https://f-droid.org/packages/com.oasisfeng.island.fdroid/",
            "PCAPdroid" = "https://pcapdroid.org/fdroid/repo/",
            "Obtainium" = "https://obtainium.imranr.dev/"
        }
             "iOS Privacy Tools" = @{
            "Adblock Pro for Safari" = "https://apps.apple.com/us/app/adblock-pro-for-safari/id1018301773",
            "1Blocker (iOS)" = "https://apps.apple.com/us/app/1blocker-ad-blocker/id1365531024",
            "Wipr" = "https://apps.apple.com/us/app/wipr/id1437218394",
            "AdGuard for iOS" = "https://apps.apple.com/us/app/adguard-adblock-privacy/id1047241010",
            "Lockdown Pro" = "https://apps.apple.com/us/app/lockdown-pro/id1535664838",
            "Raivo OTP (iOS)" = "https://raivo-otp.com/",
            "Hide My Email (iCloud+)" = "https://support.apple.com/en-us/HT202303",
            "Focus Modes (System)" = "https://support.apple.com/en-us/HT202303",
            "App Privacy Report Guide" = "https://support.apple.com/en-us/HT212614",
            "Shortcuts (Privacy Automation)" = "https://support.apple.com/en-us/HT209636",
            "Private Relay Info" = "https://support.apple.com/en-us/HT212614",
            "Call & SMS Filter (Hiya)" = "https://apps.apple.com/us/app/hiya-call-screening/id1180728474",
            "Truecaller (iOS)" = "https://apps.apple.com/us/app/truecaller-id-spam-blocker/id448133453",
            "Photo Metadata Scrubber" = "https://apps.apple.com/us/app/metaphoto/id1500369846",
            "Health Data Encrypt" = "https://apps.apple.com/us/app/health-data-encrypt/id1534363668",
            "TestFlight Privacy Audit" = "https://developer.apple.com/testflight/"
        }
    }
    "Operating Systems" = @{
        "Linux Distros" = @{
            "Kali Linux" = "https://www.kali.org/downloads/",
            "Parrot Security" = "https://www.parrotsec.org/",
            "Tails" = "https://tails.boum.org/",
            "Whonix" = "https://www.whonix.org/",
            "Qubes OS" = "https://www.qubes-os.org/",
            "Arch Linux" = "https://www.archlinux.org/download/",
            "Fedora" = "https://getfedora.org/",
            "Debian" = "https://www.debian.org/distrib/",
            "Linux" = "https://linux.org"
        }
        "Bootloader Help" = @{
            "Ventoy" = "https://www.ventoy.net/en/index.html",
            "Rufus" = "https://rufus.ie/en/",
            "Etcher" = "https://www.balena.io/etcher/"
        }
        "Router Firmware" = @{
            "OpenWrt" = "https://openwrt.org/",
            "pfSense" = "https://www.pfsense.org/",
            "OPNsense" = "https://opnsense.org/"
        }
    }
    "Security & Encryption" = @{
        "Password Managers" = @{
            "Bitwarden" = "https://bitwarden.com/",
            "KeePassXC" = "https://keepassxc.org/",
            "KeePass" = "https://keepass.info/",
            "Vaultwarden (Self-Hosted)" = "https://github.com/dani-garcia/vaultwarden"
            "Proton Pass" = "https://proton.me/pass",
            "SoloKeys" = "https://solokeys.com/",
            "OnlyKey" = "https://onlykey.io/"
        }
        "2FA & Authentication" = @{
            "Aegis Authenticator (Android)" = "https://getaegis.app/",
            "2FAS" = "https://2fas.com/",
            "Yubico" = "https://www.yubico.com/",
            "GoTrustID" = "https://gotrustid.com/",
            "Nitrokey (Hardware Keys)" = "https://www.nitrokey.com/",
            "Raivo OTP (iOS)" = "https://raivo-otp.com/",
            "Ente Auth" = "https://ente.com/auth/"
        }
        "Encryption Tools" = @{
            "VeraCrypt" = "https://www.veracrypt.fr/",
            "Cryptomator" = "https://cryptomator.org/",
            "PeaZip" = "https://peazip.github.io/",
            "7-Zip" = "https://www.7-zip.org/",
            "GnuPG" = "https://gnupg.org/",
            "Picocrypt" = "https://github.com/HACKERALERT/Picocrypt"
        }
    }
    "Privacy Tools" = @{
        "Search Engines" = @{
            "Brave Search" = "https://search.brave.com/",
            "Qwant" = "https://www.qwant.com/",
            "Startpage" = "https://www.startpage.com/",
            "SearxNG" = "https://searx.space/",
            "DuckDuckGo" = "https://duckduckgo.com/",
            "Swisscows" = "https://swisscows.com/",
            "Mojeek" = "https://www.mojeek.com/",
            "Kagi" = "https://kagi.com/",
            "Ecosia" = "https://www.ecosia.org/",
            "MetaGer" = "https://metager.org/",
            "Whoogle" = "https://github.com/benbusby/whoogle-search",
            "Torch" = "https://torchsearch.com/",
            "Millionshort" = "https://millionshort.com/",
            "Presearch" = "https://presearch.com/"
        }
        "Cloud Storage (Privacy-Focused)" = @{
            "Proton Drive" = "https://proton.me/drive",
            "Tresorit" = "https://tresorit.com/",
            "Sync.com" = "https://www.sync.com/",
            "Internxt" = "https://internxt.com/",
            "Filen" = "https://filen.io/",
            "MEGA" = "https://mega.io/"
        }
        "Privacy Testing & Auditing" = @{
            "Cover Your Tracks (EFF)" = "https://coveryourtracks.eff.org/",
            "DNS Leak Test" = "https://www.dnsleaktest.com/",
            "IPLeak" = "https://ipleak.net/",
            "BrowserLeaks" = "https://browserleaks.com/",
            "TrackerControl (Android)" = "https://trackercontrol.org/",
            "AURA" = "https://www.aura.com/"
        }
        "Metadata Removal" = @{
            "ExifTool" = "https://exiftool.org/",
            "MAT2" = "https://0xacab.org/jvoisin/mat2",
            "Scrambled Exif (Android)" = "https://gitlab.com/juanitobananas/scrambled-exif"
        }
    }  
    "Data Management" = @{
        "Secure File Deletion" = @{
            "BleachBit" = "https://www.bleachbit.org/",
            "Eraser" = "https://eraser.heidi.ie/",
            "Nwipe" = "https://github.com/martijnvanbrummelen/nwipe",
            "ShredOS" = "https://github.com/PartialVolume/shredos.x86_64"
        }
        "Secure Notes & Documents" = @{
            "Standard Notes" = "https://standardnotes.com/",
            "Joplin" = "https://joplinapp.org/",
            "Cryptee" = "https://crypt.ee/",
            "Notesnook" = "https://notesnook.com/"
        }
    }
    "Resources & Utilities" = @{
        "Privacy Resources & Guides" = @{
            "Privacy Guides" = "https://www.privacyguides.org/",
            "PRISM Break" = "https://prism-break.org/",
            "EFF Surveillance Self-Defense" = "https://ssd.eff.org/",
            "Security Planner" = "https://securityplanner.org/"
        }
        "Utilities" = @{
            "Technitium MAC Address Changer" = "https://technitium.com/tmac",
            "OnionShare" = "https://onionshare.org/",
            "Bloodware System Suite" = "https://github.com/Bloodware-Inc/BloodwareSystemSuite"
        }
    }
}

$script:UpcomingResources = @{
    "Krynet.ai (Coming 2030)" = "https://krynet.ai",
    "KrySearch (WIP, Self Hosted)" = "https://github.com/Krynet-LLC/KrySearch"
}
function Show-MainMenu {
    Clear-Host
    Write-Host ""
    Write-Host "  ██╗   ██╗ █████╗ ██████╗  ██████╗ ██████╗ ██╗    ██╗ █████╗ ██████╗ ███████╗" -ForegroundColor Red
    Write-Host "  ██║   ██║██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██║    ██║██╔══██╗██╔══██╗██╔════╝" -ForegroundColor Red
    Write-Host "  ╚██╗ ██╔╝███████║██████╔╝██║   ██║██████╔╝██║ █╗ ██║███████║██████╔╝█████╗  " -ForegroundColor Red
    Write-Host "   ╚████╔╝ ██╔══██║██╔═══╝ ██║   ██║██╔══██╗██║███╗██║██╔══██║██╔══██╗██╔══╝  " -ForegroundColor Red
    Write-Host "    ╚███╔╝ ██║  ██║██║     ╚██████╔╝██║  ██║╚███╔███╔╝██║  ██║██║  ██║███████╗" -ForegroundColor Red
    Write-Host "     ╚══╝  ╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝" -ForegroundColor DarkRed
    Write-Host "      ║                                                                         " -ForegroundColor DarkRed
    Write-Host "      ║     ██╗  ██╗███████╗    ██╗     ██╗████████╗███████╗                  " -ForegroundColor DarkRed
    Write-Host "      ╚═    ╚██╗██╔╝██╔════╝    ██║     ██║╚══██╔══╝██╔════╝                  " -ForegroundColor DarkRed
    Write-Host "             ╚███╔╝ █████╗      ██║     ██║   ██║   █████╗                    " -ForegroundColor DarkRed
    Write-Host "             ██╔██╗ ██╔══╝      ██║     ██║   ██║   ██╔══╝                    " -ForegroundColor DarkRed
    Write-Host "            ██╔╝ ██╗███████╗    ███████╗██║   ██║   ███████╗                  " -ForegroundColor DarkRed
    Write-Host "            ╚═╝  ╚═╝╚══════╝    ╚══════╝╚═╝   ╚═╝   ╚══════╝                  " -ForegroundColor DarkRed
    Write-Host ""
    Write-Host "                Security & Privacy Resource Directory - v3.0                            " -ForegroundColor Gray
    Write-Host "                Owned by Bloodware (https://linkr.it/blood)                   " -ForegroundColor DarkGray
    Write-Host ""
    Write-Host "  ? We are searching deeply for more privacy and security focused sites..." -ForegroundColor DarkCyan
    Write-Host ""
    Write-Host "  Pick a category:" -ForegroundColor White
    Write-Host ""
    
    $index = 1
    $script:CategoryMap = @{}
    
    foreach ($category in $script:Resources.Keys | Sort-Object) {
        $script:CategoryMap[$index] = $category
        Write-Host "    [$index] $category" -ForegroundColor Gray
        $index++
    }
    
    Write-Host ""
    Write-Host "    [U] Upcoming Resources" -ForegroundColor White
    Write-Host "    [S] System Information" -ForegroundColor White
    Write-Host "    [H] Help & Information" -ForegroundColor White
    Write-Host "    [Q] Quit" -ForegroundColor White
    Write-Host ""
}

function Show-CategoryMenu {
    param([string]$CategoryName)
    
    Clear-Host
    Write-Host ""
    Write-Host "  Category: $CategoryName" -ForegroundColor White
    Write-Host "  ??????????????????????????????????????????????????????????????????????????????????????????????????????" -ForegroundColor Gray
    Write-Host ""
    
    $category = $script:Resources[$CategoryName]
    $index = 1
    $script:SubCategoryMap = @{}
    
    foreach ($subCategoryName in $category.Keys | Sort-Object) {
        $script:SubCategoryMap[$index] = $subCategoryName
        Write-Host "    [$index] $subCategoryName" -ForegroundColor Gray
        $index++
    }
    
    Write-Host ""
    Write-Host "    [B] Back to Main Menu" -ForegroundColor White
    Write-Host ""
}

function Show-SubCategoryMenu {
    param(
        [string]$CategoryName,
        [string]$SubCategoryName
    )
    
    Clear-Host
    Write-Host ""
    Write-Host "  $CategoryName > $SubCategoryName" -ForegroundColor White
    Write-Host "  ??????????????????????????????????????????????????????????????????????????????????????????????????????" -ForegroundColor Gray
    Write-Host ""
    
    $resources = $script:Resources[$CategoryName][$SubCategoryName]
    $index = 1
    $script:ResourceMap = @{}
    
    foreach ($name in $resources.Keys | Sort-Object) {
        $script:ResourceMap[$index] = @{
            Name = $name
            URL = $resources[$name]
        }
        Write-Host "    [$index] $name" -ForegroundColor Gray
        $index++
    }
    
    Write-Host ""
    Write-Host "    [B] Back to Category Menu" -ForegroundColor White
    Write-Host ""
}

function Show-UpcomingMenu {
    Clear-Host
    Write-Host ""
    Write-Host "  Upcoming Resources" -ForegroundColor White
    Write-Host "  ??????????????????????????????????????????????????????????????????????????????????????????????????????" -ForegroundColor Gray
    Write-Host ""
    
    $index = 1
    $script:UpcomingMap = @{}
    
    foreach ($name in $script:UpcomingResources.Keys | Sort-Object) {
        $script:UpcomingMap[$index] = @{
            Name = $name
            URL = $script:UpcomingResources[$name]
        }
        Write-Host "    [$index] $name" -ForegroundColor Gray
        $index++
    }
    
    Write-Host ""
    Write-Host "    [B] Back to Main Menu" -ForegroundColor White
    Write-Host ""
}

function Open-URL {
    param([string]$URL, [string]$Name)
    
    try {
        Write-Host "  Opening: $Name" -ForegroundColor White
        Start-Process $URL -ErrorAction Stop
        Start-Sleep -Milliseconds 500
        return $true
    }
    catch {
        Write-Host "  Error opening URL: $($_.Exception.Message)" -ForegroundColor Red
        Write-Host "  Press any key to continue..." -ForegroundColor Yellow
        $null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
        return $false
    }
}

function Show-SystemInfo {
    Clear-Host
    Write-Host ""
    Write-Host "  System Information" -ForegroundColor White
    Write-Host "  ??????????????????????????????????????????????????????????????????????????????????????????????????????" -ForegroundColor Gray
    Write-Host ""
    
    try {
        Write-Host "  PowerShell Information:" -ForegroundColor White
        Write-Host "  ? Edition: $($PSVersionTable.PSEdition)" -ForegroundColor Gray
        Write-Host "  ? Version: $($PSVersionTable.PSVersion)" -ForegroundColor Gray
        Write-Host "  ? Build Version: $($PSVersionTable.BuildVersion)" -ForegroundColor Gray
        Write-Host "  ? CLR Version: $($PSVersionTable.CLRVersion)" -ForegroundColor Gray
        Write-Host "  ? PS Remote Protocol Version: $($PSVersionTable.PSRemotingProtocolVersion)" -ForegroundColor Gray
        Write-Host "  ? Serialization Version: $($PSVersionTable.SerializationVersion)" -ForegroundColor Gray
        Write-Host "  ? WSMan Stack Version: $($PSVersionTable.WSManStackVersion)" -ForegroundColor Gray
        Write-Host ""
        
        Write-Host "  Operating System:" -ForegroundColor White
        Write-Host "  ? OS: $([System.Environment]::OSVersion.VersionString)" -ForegroundColor Gray
        Write-Host "  ? Platform: $([System.Environment]::OSVersion.Platform)" -ForegroundColor Gray
        Write-Host "  ? Service Pack: $([System.Environment]::OSVersion.ServicePack)" -ForegroundColor Gray
        Write-Host "  ? OS Architecture: $([System.Environment]::Is64BitOperatingSystem)" -ForegroundColor Gray
        Write-Host "  ? Process Architecture: $([System.Environment]::Is64BitProcess)" -ForegroundColor Gray
        Write-Host ""
        
        Write-Host "  System Details:" -ForegroundColor White
        Write-Host "  ? Computer Name: $env:COMPUTERNAME" -ForegroundColor Gray
        Write-Host "  ? Username: $env:USERNAME" -ForegroundColor Gray
        Write-Host "  ? User Domain: $env:USERDOMAIN" -ForegroundColor Gray
        Write-Host "  ? Processor Count: $([System.Environment]::ProcessorCount)" -ForegroundColor Gray
        Write-Host "  ? System Directory: $([System.Environment]::SystemDirectory)" -ForegroundColor Gray
        Write-Host "  ? .NET Framework: $([System.Environment]::Version)" -ForegroundColor Gray
        Write-Host ""
        
        Write-Host "  Session Information:" -ForegroundColor White
        Write-Host "  ? Current Directory: $PWD" -ForegroundColor Gray
        Write-Host "  ? Execution Policy: $(Get-ExecutionPolicy)" -ForegroundColor Gray
        Write-Host "  ? User Interactive: $([System.Environment]::UserInteractive)" -ForegroundColor Gray
        Write-Host ""
        
        $culture = [System.Globalization.CultureInfo]::CurrentCulture
        Write-Host "  Regional Settings:" -ForegroundColor White
        Write-Host "  ? System Locale: $($culture.Name)" -ForegroundColor Gray
        Write-Host "  ? Display Name: $($culture.DisplayName)" -ForegroundColor Gray
        Write-Host "  ? System Timezone: $((Get-TimeZone).DisplayName)" -ForegroundColor Gray
        Write-Host "  ? Current Time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Gray
        Write-Host ""
        
        Write-Host "  Environment:" -ForegroundColor White
        Write-Host "  ? Machine Name: $([System.Environment]::MachineName)" -ForegroundColor Gray
        Write-Host "  ? User Domain Name: $([System.Environment]::UserDomainName)" -ForegroundColor Gray
        Write-Host "  ? System Page Size: $([System.Environment]::SystemPageSize)" -ForegroundColor Gray
        Write-Host "  ? Tick Count: $([System.Environment]::TickCount)" -ForegroundColor Gray
        Write-Host ""
    }
    catch {
        Write-Host "  Error retrieving some system information." -ForegroundColor Red
    }
    
    Write-Host "  VaporWareXE Lite opens security tool websites in your browser." -ForegroundColor White
    Write-Host "  No system changes are made. Everything is read-only." -ForegroundColor White
    
    Write-Host ""
    Write-Host "    [B] Back to Main Menu" -ForegroundColor White
    Write-Host ""
    
    while ($true) {
        $choice = Read-Host "  Select option"
        if ($choice -eq 'B' -or $choice -eq 'b') {
            break
        }
        else {
            Write-Host "  Invalid option - Type 'B' to go back" -ForegroundColor Red
        }
    }
}

function Show-Help {
    Clear-Host
    Write-Host ""
    Write-Host "  Help & Information" -ForegroundColor White
    Write-Host "  ??????????????????????????????????????????????????????????????????????????????????????????????????????" -ForegroundColor Gray
    Write-Host ""
    Write-Host "  ABOUT:" -ForegroundColor White
    Write-Host ""
    Write-Host "  VaporWareXE Lite is a directory of security and privacy tools." -ForegroundColor Gray
    Write-Host "  It opens websites in your browser. Nothing gets installed or changed." -ForegroundColor Gray
    Write-Host ""
    Write-Host "  HOW TO USE:" -ForegroundColor White
    Write-Host ""
    Write-Host "  1. Pick a category by typing its number" -ForegroundColor Gray
    Write-Host "  2. Select a subcategory to browse" -ForegroundColor Gray
    Write-Host "  3. Choose the tool you want to check out" -ForegroundColor Gray
    Write-Host "  4. It opens in your browser" -ForegroundColor Gray
    Write-Host "  5. Type B to go back" -ForegroundColor Gray
    Write-Host ""
    Write-Host "  WHAT IT DOES:" -ForegroundColor White
    Write-Host ""
    Write-Host "  - Shows links to security tools sorted by category" -ForegroundColor Gray
    Write-Host "  - Opens them in your default browser" -ForegroundColor Gray
    Write-Host "  - Shows your system info if you want" -ForegroundColor Gray
    Write-Host ""
    Write-Host "  WHAT IT DOESN'T DO:" -ForegroundColor White
    Write-Host ""
    Write-Host "  - Change any system settings" -ForegroundColor Gray
    Write-Host "  - Mess with your firewall" -ForegroundColor Gray
    Write-Host "  - Touch the registry" -ForegroundColor Gray
    Write-Host "  - Download anything" -ForegroundColor Gray
    Write-Host "  - Need admin rights" -ForegroundColor Gray
    Write-Host "  - Collect your data" -ForegroundColor Gray
    Write-Host ""
    Write-Host "  TIPS:" -ForegroundColor White
    Write-Host ""
    Write-Host "  - Check the URL bar after links open" -ForegroundColor Gray
    Write-Host "  - Look for HTTPS before entering passwords" -ForegroundColor Gray
    Write-Host "  - Keep your security software updated" -ForegroundColor Gray
    Write-Host "  - Use unique passwords everywhere" -ForegroundColor Gray
    Write-Host "  - Turn on 2FA when you can" -ForegroundColor Gray
    Write-Host ""
    Write-Host "  CATEGORIES:" -ForegroundColor White
    Write-Host ""
    Write-Host "  File scanners, antiviruses, VPNs, DNS providers, browsers," -ForegroundColor Gray
    Write-Host "  browser extensions, messaging apps, uninstallers, debloaters," -ForegroundColor Gray
    Write-Host "  password managers, email privacy, encryption tools, and more." -ForegroundColor Gray
    Write-Host ""
    Write-Host "    [B] Back to Main Menu" -ForegroundColor White
    Write-Host ""
    
    while ($true) {
        $choice = Read-Host "  Select option"
        if ($choice -eq 'B' -or $choice -eq 'b') {
            break
        }
        else {
            Write-Host "  Invalid option - Type 'B' to go back" -ForegroundColor Red
        }
    }
}

function Start-SubCategoryBrowser {
    param(
        [string]$CategoryName,
        [string]$SubCategoryName
    )
    
    while ($true) {
        Show-SubCategoryMenu -CategoryName $CategoryName -SubCategoryName $SubCategoryName
        $choice = Read-Host "  Select option"
        
        if ($choice -match '^\d+$') {
            $num = [int]$choice
            if ($script:ResourceMap.ContainsKey($num)) {
                $resource = $script:ResourceMap[$num]
                Open-URL -URL $resource.URL -Name $resource.Name
            }
            else {
                Write-Host "  Invalid selection" -ForegroundColor Red
                Start-Sleep -Seconds 1
            }
        }
        elseif ($choice -eq 'B' -or $choice -eq 'b') {
            break
        }
        else {
            Write-Host "  Invalid option" -ForegroundColor Red
            Start-Sleep -Seconds 1
        }
    }
}

function Start-CategoryBrowser {
    param([string]$CategoryName)
    
    while ($true) {
        Show-CategoryMenu -CategoryName $CategoryName
        $choice = Read-Host "  Select option"
        
        if ($choice -match '^\d+$') {
            $num = [int]$choice
            if ($script:SubCategoryMap.ContainsKey($num)) {
                $subCategory = $script:SubCategoryMap[$num]
                Start-SubCategoryBrowser -CategoryName $CategoryName -SubCategoryName $subCategory
            }
            else {
                Write-Host "  Invalid selection" -ForegroundColor Red
                Start-Sleep -Seconds 1
            }
        }
        elseif ($choice -eq 'B' -or $choice -eq 'b') {
            break
        }
        else {
            Write-Host "  Invalid option" -ForegroundColor Red
            Start-Sleep -Seconds 1
        }
    }
}

function Start-UpcomingBrowser {
    while ($true) {
        Show-UpcomingMenu
        $choice = Read-Host "  Select option"
        
        if ($choice -match '^\d+$') {
            $num = [int]$choice
            if ($script:UpcomingMap.ContainsKey($num)) {
                $resource = $script:UpcomingMap[$num]
                Open-URL -URL $resource.URL -Name $resource.Name
            }
            else {
                Write-Host "  Invalid selection" -ForegroundColor Red
                Start-Sleep -Seconds 1
            }
        }
        elseif ($choice -eq 'B' -or $choice -eq 'b') {
            break
        }
        else {
            Write-Host "  Invalid option" -ForegroundColor Red
            Start-Sleep -Seconds 1
        }
    }
}

while ($true) {
    Show-MainMenu
    $choice = Read-Host "  Select option"
    
    if ($choice -match '^\d+$') {
        $num = [int]$choice
        if ($script:CategoryMap.ContainsKey($num)) {
            $category = $script:CategoryMap[$num]
            Start-CategoryBrowser -CategoryName $category
        }
        else {
            Write-Host "  Invalid selection" -ForegroundColor Red
            Start-Sleep -Seconds 1
        }
    }
    elseif ($choice -eq 'U' -or $choice -eq 'u') {
        Start-UpcomingBrowser
    }
    elseif ($choice -eq 'S' -or $choice -eq 's') {
        Show-SystemInfo
    }
    elseif ($choice -eq 'H' -or $choice -eq 'h') {
        Show-Help
    }
    elseif ($choice -eq 'Q' -or $choice -eq 'q') {
        Write-Host ""
        Write-Host "  Closing..." -ForegroundColor White
        Write-Host ""
        Start-Sleep -Seconds 1
        exit
    }
    else {
        Write-Host "  Invalid option" -ForegroundColor Red
        Start-Sleep -Seconds 1
    }
}

<#
????????????????????????????????????????????????????????????????????????????????
PROPERTY LICENSE & TERMS OF USE
????????????????????????????????????????????????????????????????????????????????

VaporWareXE Lite v3.0
Copyright (c) 2026 Bloodware
All Rights Reserved

This software is the proprietary property of Bloodware.

PERMITTED USE:
- Personal use
- Educational purposes
- Security research

RESTRICTIONS:
- No commercial redistribution without written permission
- No modification and redistribution under different names
- No removal of credits or ownership information
- No warranty provided - use at your own risk

For licensing inquiries or permissions:
https://linkr.it/blood

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR 
OTHER LIABILITY ARISING FROM THE USE OF THIS SOFTWARE.

????????????????????????????????????????????????????????????????????????????????
#>


