#!/bin/bash

# Function to center text
center_text() {
  text="$1"
  cols=$(tput cols)
  padding=$(( (cols - ${#text}) / 2 ))
  printf "%${padding}s%s\n" "" "$text"
}

# Function to display ASCII art with delay
display_ascii() {
  center_text "'##::::'##::'######:::'########::::::::'###::::'####:'########::'########::'########:::'#######::'########::"
  sleep 0.1
  center_text " ##:::: ##:'##... ##:: ##.... ##::::::'## ##:::. ##:: ##.... ##: ##.... ##: ##.... ##:'##.... ##: ##.... ##:"
  sleep 0.1
  center_text " ##:::: ##: ##:::..::: ##:::: ##:::::'##:. ##::: ##:: ##:::: ##: ##:::: ##: ##:::: ##: ##:::: ##: ##:::: ##:"
  sleep 0.1
  center_text " ##:::: ##: ##::'####: ##:::: ##::::'##:::. ##:: ##:: ########:: ##:::: ##: ########:: ##:::: ##: ########::"
  sleep 0.1
  center_text " ##:::: ##: ##::: ##:: ##:::: ##:::: #########:: ##:: ##.. ##::: ##:::: ##: ##.. ##::: ##:::: ##: ##.....:::"
  sleep 0.1
  center_text " ##:::: ##: ##::: ##:: ##:::: ##:::: ##.... ##:: ##:: ##::. ##:: ##:::: ##: ##::. ##:: ##:::: ##: ##:::::::"
  sleep 0.1
  center_text ". #######::. ######::: ########::::: ##:::: ##:'####: ##:::. ##: ########:: ##:::. ##:. #######:: ##:::::::"
  sleep 0.1
  center_text ":.......::::......::::........::::::..:::::..::....::..:::::..::........:::..:::::..:::.......:::..::::::::"
}
# Display ASCII art with animation
display_ascii

# Add Channel and Credit
center_text "$(echo -e '\033[1;32mChannel: https://t.me/EOCommunity\033[0m')"
center_text "$(echo -e '\033[1;32mCredit: https://github.com/yapezz99\033[0m')"

# Install screen
echo -e "\033[1;33mInstalling screen...\033[0m"
sudo apt install screen -y

# Install git
echo -e "\033[1;33mInstalling git...\033[0m"
sudo apt install git -y

# Clone repository
echo -e "\033[1;33mCloning repository...\033[0m"
git clone https://github.com/yapezz99/pixelversexyzbot.git

# Change directory to the cloned repository
echo -e "\033[1;33mChanging directory to pixelversexyzbot...\033[0m"
cd pixelversexyzbot

# Update package list
echo -e "\033[1;33mUpdating package list...\033[0m"
sudo apt update

# Install software-properties-common
echo -e "\033[1;33mInstalling software-properties-common...\033[0m"
sudo apt install software-properties-common -y

# Add the deadsnakes PPA
echo -e "\033[1;33mAdding deadsnakes PPA...\033[0m"
sudo add-apt-repository ppa:deadsnakes/ppa -y

# Update package list again
echo -e "\033[1;33mUpdating package list again...\033[0m"
sudo apt update

# Install Python 3.10 and related packages
echo -e "\033[1;33mInstalling Python 3.10 and related packages...\033[0m"
sudo apt install python3.10 python3.10-venv python3.10-dev -y

# Create a virtual environment
echo -e "\033[1;33mCreating virtual environment...\033[0m"
python3 -m venv venv

# Activate the virtual environment
echo -e "\033[1;33mActivating virtual environment...\033[0m"
source venv/bin/activate

# Install required Python packages
echo -e "\033[1;33mInstalling required Python packages...\033[0m"
pip3 install -r requirements.txt

# Display installation success message
echo -e "\033[1;32m"
center_text "Instalasi telah berhasil! Terima kasih telah menggunakan skrip ini. Silahkan Jalankan bot ini dengan python3 bot.py"
echo -e "\033[0m"
