# Correctly display UTF-8 with combining characters.
setopt combiningchars
setopt auto_cd

autoload -Uz zmv

export TMUX_TMPDIR=~/.config/tmux/tmp

cdpath=($HOME/www $HOME/www/grandvision)

alias vim='nvim'
alias v='vim'

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"


if type tmux &> /dev/null; then
  ZSH_TMUX_AUTOSTART=true
  ZSH_TMUX_AUTOQUIT=false
fi

# plugins=(tmux)
plugins=(git tmux zsh-vi-mode history history-substring-search colorize zsh-autosuggestions)

eval "$(/opt/homebrew/bin/brew shellenv)"

export BAT_THEME="Dracula"
export FZF_PREVIEW_PREVIEW_BAT_THEME="Dracula"

function flac-to-mp3 {
    for a in ./*.flac; do
        ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
    done
}

function wav-to-mp3 {
    for a in ./*.WAV; do
        ffmpeg -i "$a" -qscale:a 0 "${a[@]/%WAV/mp3}"
    done
}

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem

export EDITOR='nvim'
export PATH="$HOME/.bin:$HOMEBREW_PREFIX/bin:$HOME/Library/Python/3.9/bin:/usr/local/opt/openjdk@8/bin:./node_modules/.bin:$$HOME/.config/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$GEM_HOME/bin:$HOME/.node_modules/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:/bin:./vendor/bin:/usr/sbin/:/Library/TeX/texbin:$HOME/.local/bin"
export COWPATH="$HOME/.cowsay"
export ZDOTDIR="$HOME"

export CPPFLAGS="-I/usr/local/opt/openjdk@8/include"

export npm_config_prefix=~/.node_modules

eval "$(gdircolors ~/.dir_colors)"

export GPR_TOKEN="$(cat $HOME/.gpr_token)"
export GITHUB_TOKEN="$GPR_TOKEN"

zstyle ':completion:*' matcher-list 'l:|=* r:|=*'
zstyle ':autocomplete:tab:*' insert-unambiguous yes

PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH:/usr/local/texlive/2020basic/bin/x86_64-darwin"
export PATH="/opt/homebrew/opt/python@3.8/bin:$PATH;"

export JAVA_HOME="$(/usr/libexec/java_home)"

source $ZSH/oh-my-zsh.sh

# User configuration
# Zsh
alias zshc="vim ~/.zshrc"
alias zshr="source ~/.zshrc"

## Git aliases
alias ga='git add'
alias gc='git commit -m '
alias gac='git add -A && git commit -m '
alias gb='git branch'
alias gco='git checkout'
alias gst='git status --renames --show-stash'
alias gd='git diff'
alias gps='git push'
alias gpso='git push origin'
alias gpsm='git push origin master'
alias gplm='git pull origin master'
alias gpl='git pull'
alias glog='git log --graph --all --format=format:"%x1b[36m%h%C(reset) - %C(bold green)(%cr)%C(reset) %C(white)%s%C(reset) %C(bold white)‚Äî %cn%C(reset)%C(bold yellow)%d%C(reset)" --abbrev-commit --date=relative'
alias grss='git reset --soft HEAD~1'
alias grsh='git reset --hard HEAD~1'

# ## Laravel aliases
alias art='php artisan'
alias {art-key,art-keygen}='php artisan key:generate'
alias {artg-con,artg-controller}='php artisan generate:controller'
alias {artg-mod,artg-model}='php artisan generate:model'
alias artg-seed='php artisan generate:seed'
alias artg-view='php artisan generate:view'
alias {artg-mig,artg-migration}='php artisan generate:migration'
alias {art-mmig,art-makemigration}='php artisan migrate:make'
alias {art-mig,art-migrate}='php artisan migrate'
alias art-seed='php artisan db:seed'

# ## Composer aliases
alias comp='composer'
alias {comp-create,compc}='composer create-project'
alias {comp-req,compr}='composer require'
alias {comp-up,compu}='composer update'
alias comp-laravel='composer create-project laravel/laravel'

# ## Yarn
alias y='yarn'
alias yw='yarn workspace'
alias yb='yarn build'
alias yyb='y && y build'
alias ys='yarn start'

# ## tmux
alias tmuxgo='tmux new-session \; split-window \; split-window \; select-layout main-vertical \; resize-pane -t:.0 -x 125'
alias tsp='tmux select-pane '
alias tsfp='tmux select-pane -t:.0'
alias tkill='tmux kill-server'
alias tmux='tmux -u -l'

## Taskwarrior
alias t='task'

## Misc
alias l='ls --color -lah --group-directories-first'
alias o='open'
alias mv='mv -v'
alias cp='cp -Rv'
alias bc='bc -l'
alias cat='bat'
alias mkdir='mkdir -pv'
alias chrome='open -a "Google Chrome"'
alias ff='open -a "Firefox"'
alias safari='open -a "Safari"'
alias 777='chmod -R 777'
alias dns-flush='dscacheutil -flushcache'
alias show-hidden='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias show-full-path='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES'
alias vimc='vim ~/.config/nvim'
alias flac-to-m4a='for f in *.flac; do ffmpeg -i "$f"  -vf "crop=((in_w/2)*2):((in_h/2)*2)" -c:a alac "${f%.flac}.m4a"; done'
alias phpconfig='vim /usr/local/etc/php/5.6/php.ini'
alias steam-wine='wine ~/.wine/drive_c/Program\ Files/Steam/Steam.exe -no-cef-sandbox'
alias wget-deps='wget -E -H -k -K -p'
alias rg="rg --hidden"
alias sshk="cat ~/.ssh/id_rsa.pub | pbcopy"
alias rn='react-native'
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"
alias internalip="ipconfig getifaddr en0"
alias lvim="lvim +NvimTreeToggle"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jrs/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jrs/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jrs/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jrs/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Install (one or multiple) selected application(s)
# using "brew search" as source input
# mnemonic [B]rew [I]nstall [P]lugin
bip() {
  local inst=$(brew search | fzf -m)

  if [[ $inst ]]; then
    for prog in $(echo $inst);
    do; brew install $prog; done;
  fi
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(rg --files --null | xargs -0 dirname | sort -u | uniq | fzf +m --height 40%)
  # dir=$(find ${1:-.} -path '*/\.*' -prune \
  #                 -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
