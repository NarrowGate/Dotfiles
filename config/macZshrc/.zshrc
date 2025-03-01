# Set Variables

# Set for folder paths
USER_HOME="/Users/melvinwilson"
USER_DOCUMENT="$USER_HOME/Documents"
ONEDRIVE_PATH="$USER_DOCUMENT/OneDrive"
ONEDRIVE_PATH_1="$HOME/OneDrive"

MY_DRIVE_PATH="Mdrive"
MY_CODE_PATH="/Mdrive/MW/homeCode"
MY_TEXT_PATH="/Mdrive/MW/txt_js"
MY_MUSIC_PATH="Mdrive/MW/_music"

# Change zsh options


# Create Aliases
alias ls='ls -lAFh'

# Functions
## Path alias functions
goToPath() {
    local path1="$1"
    local path2="$2"

    if [[ -d "$path1" ]]; then
        cd "$path1" || return
    elif [[ -d "$path2" ]]; then
        cd "$path2" || return
    else
        echo "❌ Error: Neither '$path1' nor '$path2' exist."
    fi
}

myDrive() {
    goToPath "$ONEDRIVE_PATH/$MY_DRIVE_PATH" "$ONEDRIVE_PATH_1/$MY_DRIVE_PATH"
}

myCode() {
    goToPath "$ONEDRIVE_PATH/$MY_CODE_PATH" "$ONEDRIVE_PATH_1/$MY_CODE_PATH"
}

myText() {
    goToPath "$ONEDRIVE_PATH/$MY_TEXT_PATH" "$ONEDRIVE_PATH_1/$MY_TEXT_PATH"
}

myRepos() {
    goToPath "$USER_DOCUMENT/repos"
}

myMusic() {
    goToPath "$ONEDRIVE_PATH/$MY_MUSIC_PATH" "$ONEDRIVE_PATH_1/$MY_MUSIC_PATH"
}

# Function aliases
alias shutdownnow='sudo shutdown -h now'
alias restartnow= 'sudo shutdown -r now'

alias sourceZshrc='source $USER_HOME/.zshrc'
alias sourceNvim='source $USER_HOME/.config/nvim/init.lua'

# Update Configs
alias copyZshrcFromLocal='cp $USER_DOCUMENT/repos/Dotfiles/config/macZshrc/.zshrc $USER_HOME/.zshrc'
alias copyNvimFromLocal='cp $USER_DOCUMENT/repos/Dotfiles/config/nvim/lua/init.lua $USER_HOME/.config/nvim/init.lua'

# Pull Zshrc
alias pullDotfiles='cd $USER_DOCUMENT/repos/Dotfiles && git pull origin main'


# Application aliases
alias chromeMelvin='open -na "Google Chrome" --args --profile-directory="Default"'
alias chromeReshma='open -na "Google Chrome" --args --profile-directory="Profile 1"'
alias myChrome='open -na "Google Chrome" --args --profile-directory="Profile 2"'

# Customize Prompts

# Add locations to Path Variables

# Write handy functions

# Use ZSH plugins
#
alias yelp='
echo "============================================" &&
echo "copyZshrcFromLocal: ---" &&
echo "sourceZshrc: ---" &&
echo "copyNvimFromLocal: ---" &&
echo "sourceNvim: ---" &&
echo "myDrive: Path to Mdrive/" &&
echo "myText: Path to Mdrive/MW/txt_js" &&
echo "myCode: Path to Mdrive/MW/homeCode" &&
echo "myRepos: Path to Documents/repos" &&
echo "myChrome: chromeMelvin & chromeReshma" &&
echo "pullDotfiles: Git pull origin main of the Dotfiles Repo" 
echo "============================================"
'
alias yelpNvim='
echo "============================================" &&
echo "Navigation" &&
echo "Ex: For file explorer (Netrw)" &&
echo "e: To edit file" &&
echo "============================================"
echo "Buffers" &&
echo "ls: List all buffers, bn: next, bp: previous, bd: delete (close a file) " &&
echo ":b1 or :b ant-text.txt or :b and tab or :b ctrl+d", :bf for first buffer, :bl for last buffer, ctrl + ^ to switch to previously opened buffer and between &&
echo ":ba to open all buffers in different windows" &&
echo "ctrl + g to display file name" &&
echo ":wq to save and close" &&
echo "============================================"
echo "Close (in Window) :q (or ctrl + w and q) :q! :qall!" &&
echo "Close all windows except the current one ctrl + w and o or :on" &&
echo "============================================"
echo "Windows" &&
echo "ctrl + w and w to switch windows" &&
echo ":sp to split horizontal :sp file-name to open a different file-name ctrl + w and s" &&
echo ":vs to split vertical :vs file-name to open a different file-name ctrl + w and v" &&
echo "ctrl + w h,j,k and l to navigate windows" &&
echo "============================================"
echo "Help :h :buffers" &&
echo ":helpclose Close Help" &&
echo "============================================"
'