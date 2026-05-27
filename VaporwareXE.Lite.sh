#!/usr/bin/env bash

clear

APP_NAME="VaporWareXE Lite v3.0"

echo ""
echo "  $APP_NAME"
echo ""
echo "  NOTE: This is uncompleted, do not expect a lot."
echo "  Preferred as root is NOT required."
echo "  Works on any modern Linux shell (bash/zsh)."
echo ""
echo "  Press ENTER to continue..."
read -r

########################################
# DATA
########################################

declare -A RESOURCES

# Example flattened structure: Category|Subcategory|Name
RESOURCES["Scanning & Analysis|File Scanning & Malware Analysis|VirusTotal"]="https://www.virustotal.com/gui/home/upload"
RESOURCES["Scanning & Analysis|File Scanning & Malware Analysis|Hybrid Analysis"]="https://hybrid-analysis.com/"
RESOURCES["Scanning & Analysis|File Scanning & Malware Analysis|ANY.RUN"]="https://app.any.run/"

RESOURCES["Network & Privacy|VPN Services|ProtonVPN"]="https://protonvpn.com/"
RESOURCES["Network & Privacy|VPN Services|Mullvad VPN"]="https://mullvad.net/"

RESOURCES["Browsers & Extensions|Browsers|LibreWolf"]="https://librewolf.net/"
RESOURCES["Browsers & Extensions|Browsers|Tor Browser"]="https://www.torproject.org/"

########################################
# HELPERS
########################################

open_url() {
    local url="$1"
    local name="$2"

    echo "Opening: $name"

    if command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$url" >/dev/null 2>&1 &
    elif command -v open >/dev/null 2>&1; then
        open "$url" >/dev/null 2>&1 &
    else
        echo "No URL opener found (xdg-open missing)"
    fi
}

pause() {
    read -r -p "Press ENTER to continue..."
}

########################################
# MENU LOGIC
########################################

show_main_menu() {
    clear
    echo ""
    echo "  ███████╗██╗   ██╗██████╗  █████╗ ██████╗ ███████╗"
    echo "  ██╔════╝██║   ██║██╔══██╗██╔══██╗██╔══██╗██╔════╝"
    echo "  █████╗  ██║   ██║██████╔╝███████║██████╔╝█████╗  "
    echo "  ██╔══╝  ██║   ██║██╔══██╗██╔══██║██╔══██╗██╔══╝  "
    echo "  ██║     ╚██████╔╝██║  ██║██║  ██║██║  ██║███████╗"
    echo "  ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝"
    echo ""
    echo "  Security & Privacy Resource Directory"
    echo ""
    echo "  [1] Scanning & Analysis"
    echo "  [2] Network & Privacy"
    echo "  [3] Browsers & Extensions"
    echo ""
    echo "  [Q] Quit"
    echo ""
}

list_subcategories() {
    local category="$1"

    echo ""
    echo "  $category"
    echo "  -----------------------------"
    echo ""

    echo "  Available tools:"
    echo ""

    local i=1
    declare -gA SUBMAP=()

    for key in "${!RESOURCES[@]}"; do
        IFS='|' read -r cat sub name <<< "$key"

        if [[ "$cat" == "$category" ]]; then
            echo "  [$i] $sub -> $name"
            SUBMAP[$i]="$key"
            ((i++))
        fi
    done

    echo ""
    echo "  [B] Back"
    echo ""
}

########################################
# MAIN LOOP
########################################

while true; do
    show_main_menu
    read -r choice

    case "$choice" in
        1)
            category="Scanning & Analysis"
            while true; do
                list_subcategories "$category"
                read -r subchoice

                if [[ "$subchoice" == "B" || "$subchoice" == "b" ]]; then
                    break
                elif [[ "$subchoice" =~ ^[0-9]+$ ]] && [[ -n "${SUBMAP[$subchoice]}" ]]; then
                    key="${SUBMAP[$subchoice]}"
                    url="${RESOURCES[$key]}"
                    IFS='|' read -r c s n <<< "$key"
                    open_url "$url" "$n"
                fi
            done
            ;;

        2)
            category="Network & Privacy"
            while true; do
                list_subcategories "$category"
                read -r subchoice

                if [[ "$subchoice" == "B" || "$subchoice" == "b" ]]; then
                    break
                elif [[ "$subchoice" =~ ^[0-9]+$ ]] && [[ -n "${SUBMAP[$subchoice]}" ]]; then
                    key="${SUBMAP[$subchoice]}"
                    url="${RESOURCES[$key]}"
                    IFS='|' read -r c s n <<< "$key"
                    open_url "$url" "$n"
                fi
            done
            ;;

        3)
            category="Browsers & Extensions"
            while true; do
                list_subcategories "$category"
                read -r subchoice

                if [[ "$subchoice" == "B" || "$subchoice" == "b" ]]; then
                    break
                elif [[ "$subchoice" =~ ^[0-9]+$ ]] && [[ -n "${SUBMAP[$subchoice]}" ]]; then
                    key="${SUBMAP[$subchoice]}"
                    url="${RESOURCES[$key]}"
                    IFS='|' read -r c s n <<< "$key"
                    open_url "$url" "$n"
                fi
            done
            ;;

        q|Q)
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid option"
            sleep 1
            ;;
    esac
done
