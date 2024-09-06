#!/bin/bash

# Function to display the menu with checkboxes
display_menu() {
    clear
    echo -e "\n      **CHI Development Configuration Setup**"
    echo
    echo "1) $(check_installation 'brew')"
    echo "2) $(check_installation 'google-chrome')"
    echo "3) $(check_installation 'visual-studio-code')"
    echo "4) $(check_installation 'microsoft-teams')"
    echo "5) $(check_installation 'node@18')"
    echo "6) $(check_installation 'yarn')"
    echo "7) $(check_installation 'docker')"
    echo "8) $(check_installation 'flutter')"
    echo "9) $(check_docker_mysql_container)"
    echo "a) Install All"
    echo "b) Abort"
    echo
    echo -n "Type the number of the line to be executed, 'a' to install all, or 'b' to abort: "
}

# Function to check if a software is installed with color-coded output
check_installation() {
    GREEN="\033[0;32m"
    RED="\033[0;31m"
    NC="\033[0m" # No Color

    case $1 in
        'brew')
            command -v brew >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] Brew" || echo -e "[${RED}✖${NC}] Brew"
            ;;
        'google-chrome')
            brew list --cask google-chrome >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] Google Chrome" || echo -e "[${RED}✖${NC}] Google Chrome"
            ;;
        'visual-studio-code')
            brew list --cask visual-studio-code >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] VS Code" || echo -e "[${RED}✖${NC}] VS Code"
            ;;
        'microsoft-teams')
            brew list --cask microsoft-teams >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] MS Teams" || echo -e "[${RED}✖${NC}] MS Teams"
            ;;
        'node@18')
            node --version >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] Node 18.20 LTS" || echo -e "[${RED}✖${NC}] Node 18.20 LTS"
            ;;
        'yarn')
            yarn --version >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] Yarn" || echo -e "[${RED}✖${NC}] Yarn"
            ;;
        'docker')
            command -v docker >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] Docker" || echo -e "[${RED}✖${NC}] Docker"
            ;;
        'flutter')
            command flutter doctor --version >/dev/null 2>&1 && echo -e "[${GREEN}✔${NC}] Flutter" || echo -e "[${RED}✖${NC}] Flutter"
            ;;
    esac
}