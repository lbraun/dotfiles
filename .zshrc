# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="geoffgarside"

# Example aliases
alias zshconfig="vi ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zsource="source ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

# Custom aliases
alias mostused='history | awk '"'"'{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}'"'"' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10'
alias encrypt='openssl des3 -in'
alias decrypt='openssl des3 -d -in'
alias asearch='alias | grep'
alias sshconfig='vi ~/.ssh/config'

alias dev='cd ~/dev'
alias thanks='cd ~/dev/personal/thanksgiving'
alias bici='cd ~/dev/personal/bicimas'
alias csr='cd ~/dev/grad_school/csr_lookup'
alias grad='cd ~/Google\ Drive/Grad\ School'
alias geof='cd ~/dev/grad_school/geofreebie'

alias deploy='bundle exec cap deploy'
alias deploys='bundle exec cap staging deploy'
alias deployp='bundle exec cap production deploy'
alias deployh='git push heroku master'

alias zspec='zeus rspec'
alias zz='zeus rspec'
alias zake='zeus rake'
alias zs='zeus start'

alias gdiff='git diff --no-index'
alias gds='git diff --staged'
alias gundo="git reset --soft 'HEAD^'"
alias git30="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='Branch: %(refname:short) | Author: %(authoremail) | Date: %(authordate:short)'"
alias gprune="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
alias grr="git reset ."
alias grecent="git for-each-ref --sort='authordate:iso8601' --format=' %(authordate:relative)%09%(refname:short)' refs/heads"
alias gre='grecent'
alias gpp='git push --set-upstream origin $(current_branch)'
alias gu='git up'
alias wip="git commit -am '@wip'"

alias hb='hub browse'
alias hc='hub compare'
alias hcc='hub compare master...lbraun:$(current_branch)'

alias rv='R --no-restore --no-save -q'

alias crb='cordova run browser'
alias cra='cordova run android'
alias nrb='npm run build'


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git zeus osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...




function google {
  read F1
  F=`echo $F1 | sed s/\ /+/g`

  open "http://google.com/search?q=$F"
}
