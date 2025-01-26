# Set Variables


# Change zsh options


# Create Aliases
alias ls='ls -lAFh'
# Path aliases
alias Mdrive='[[ -d "/Users/melvinwilson/Documents/OneDrive" ]] && cd /Users/melvinwilson/Documents/OneDrive/Mdrive || cd Library/CloudStorage/OneDrive-Personal/Mdrive'
alias myCode='[[ -d "/Users/melvinwilson/Documents/OneDrive" ]] && cd /Users/melvinwilson/Documents/OneDrive/Mdrive/MW/homeCode || cd Library/CloudStorage/OneDrive-Personal/Mdrive/MW/homeCode'
alias repos='cd /Users/melvinwilson/Documents/repos'

# Function aliases
alias shutdownnow='sudo shutdown -h now'
alias restartnow= 'sudo shutdown -r now'
alias sourceZshrc='source /Users/melvinwilson/.zshrc'

# Update Configs
alias copyZshrcFromLocal='cp /Users/melvinwilson/Documents/repos/Dotfiles/config/macZshrc/.zshrc /Users/melvinwilson/.zshrc'

# Pull Zshrc
alias pullZshrc='cd /Users/melvinwilson/Documents/repos/Dotfiles && git pull origin main'


# Application aliases
alias chromeMelvin='open -na "Google Chrome" --args --profile-directory="Default"'
alias chromeReshma='open -na "Google Chrome" --args --profile-directory="Profile 1"'
alias chromeVinu='open -na "Google Chrome" --args --profile-directory="Profile 2"'

# Customize Prompts

# Add locations to Path Variables

# Write handy functions

# Use ZSH plugins