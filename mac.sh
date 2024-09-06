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