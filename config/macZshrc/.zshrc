# Set Variables

# Set for folder paths
USER_HOME="/Users/melvinwilson"
USER_DOCUMENT="$USER_HOME/Documents"
ONEDRIVE_PATH="$USER_DOCUMENT/OneDrive"
ONEDRIVE_PATH_1="$HOME/OneDrive"
CLOUD_STORAGE_ONEDRIVE_PATH="$HOME/Library/CloudStorage/OneDrive-Personal"

# Change zsh options


# Create Aliases
alias ls='ls -lAFh'
# Path aliases
# alias myDrive='[[ -d "$ONEDRIVE_PATH" ]] && cd /$ONEDRIVE_PATH/Mdrive || $ONEDRIVE_PATH_1/Mdrive'
alias myCode='[[ -d "$ONEDRIVE_PATH" ]] && cd /$ONEDRIVE_PATH/Mdrive/MW/homeCode || $ONEDRIVE_PATH_1/Mdrive/MW/homeCode'
alias myText='[[ -d "$ONEDRIVE_PATH" ]] && cd /$ONEDRIVE_PATH/Mdrive/MW/txt_js || $ONEDRIVE_PATH_1/Mdrive/MW/txt_js'
alias myRepos='cd $USER_DOCUMENT/repos'

# Functions
myDrive() {
    if [[ -d "$ONEDRIVE_PATH/Mdrive" ]]; then
        cd "$ONEDRIVE_PATH/Mdrive" || return
    elif [[ -d "$ONEDRIVE_PATH_1/Mdrive" ]]; then
        cd "$ONEDRIVE_PATH_1/Mdrive" || return
    else
        echo "❌ Error: Neither '$ONEDRIVE_PATH/Mdrive' nor '$ONEDRIVE_PATH_1/Mdrive' exist."
    fi
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
