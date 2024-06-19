# Pixelversexyzbot

This repository contains a script to install and set up the `pixelversexyzbot`. The script will install all necessary dependencies, clone the repository, set up a Python virtual environment, and install required Python packages.

# Feature

- [x] Suppport Multi Account
- [x] Input data manually (no login require)

## Installation

1. **Download the Script**

   Download the `main.sh` file to your local machine using `wget`:

   ```sh
   wget https://raw.githubusercontent.com/yapezz99/pixelverse/main/main.sh
   ```

2. **Make the Script Executable**

   Open your terminal and navigate to the directory where `main.sh` is located. Run the following command to make the script executable:

   ```sh
   chmod +x main.sh
   ```

3. **Run the Script**

   Execute the script with the following command:

   ```sh
   ./main.sh
   ```

   The script will install necessary packages, clone the repository, and set up the virtual environment.

## Running the Bot in the Background

To run the bot in the background using `screen`, follow these steps:

1. **Start a New Screen Session**

   ```sh
   screen -S pixel
   ```

2. **Navigate to the Bot Directory**

   If not already in the `pixelversexyzbot` directory, navigate to it:

   ```sh
   cd pixelversexyzbot
   ```

3. **Activate the Virtual Environment**

   ```sh
   source venv/bin/activate
   ```
4. **Get Telegram data**
   
   1. Active web inspecting in telegram app, How to activate follow the video [https://youtu.be/NYxHmck_GjE](https://youtu.be/NYxHmck_GjE)
   2. Goto pixeltap bot and open the apps
   3. Press `F12` on your keyboard to open devtool or right click on app and select `Inspect`
   4. Goto `console` menu and copy [javascript code](#javascript-command-to-get-telegram-data-for-desktop) then paste on `console` menu
   5. If you don't receive error message, it means you successfully copy telegram data then paste on `data.txt` (1 line for 1 telegram data)
   
   Example telegram data

   ```
   query_id=xxxxxxxxxx&user=xxxxxxfirst_namexxxxxlast_namexxxxxxxusernamexxxxxxxlanguage_codexxxxxxxallows_write_to_pmxxxxxxx&auth_date=xxxxxx&hash=xxxxxxxxxxxxxxxxxxxxx
   ```

   6. If you want to add more account. Just paste telegram second account data in line number 2.
   
   Maybe like this sample in below

   ```
   1.query_id=xxxxxxxxxx&user=xxxxxxfirst_namexxxxxlast_namexxxxxxxusernamexxxxxxxlanguage_codexxxxxxxallows_write_to_pmxxxxxxx&auth_date=xxxxxx&hash=xxxxxxxxxxxxxxxxxxxxx
   2.query_id=xxxxxxxxxx&user=xxxxxxfirst_namexxxxxlast_namexxxxxxxusernamexxxxxxxlanguage_codexxxxxxxallows_write_to_pmxxxxxxx&auth_date=xxxxxx&hash=xxxxxxxxxxxxxxxxxxxxx
   ```
   
5. **Edit Data**
   To edit data.txt run command :
   ```sh
   nano data.txt
   ```
   and press `CTRL + X` `Y` `ENTER`
   
6. **Run the Bot**

   ```sh
   python3 bot.py
   ```

7. **Detach from the Screen Session**

   Press `Ctrl + A`, then `D` to detach from the screen session and leave the bot running in the background.


## Additional Information

- **Channel**: [https://t.me/EOCommunity](https://t.me/EODiscussion)
- **Credit**: Script created by [Nodejsan](yapezz99/pixelversexyzbot/)

## License

This script is provided as-is without any warranty. Use it at your own risk. Feel free to modify and adapt it to your needs.
```
