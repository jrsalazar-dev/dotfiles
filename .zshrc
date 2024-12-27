# Correctly display UTF-8 with combining characters.
setopt combiningchars
setopt auto_cd

autoload -Uz zmv

export TMUX_TMPDIR=~/.config/tmux/tmp

cdpath=($HOME/www $HOME/www/grandvision $HOME/www/grandvision/opcos)

alias vim='nvim'
alias v='vim'
alias vv='vim .'

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"


if type tmux &> /dev/null; then
  ZSH_TMUX_AUTOSTART=true
  ZSH_TMUX_AUTOQUIT=false
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

source $HOME/www/grandvision/opcos/scripts/utils.sh

export BAT_THEME="Dracula"
export FZF_PREVIEW_PREVIEW_BAT_THEME="Dracula"
export FZF_PREVIEW_ADVANCED=true
export FZF_PREVIEW_WINDOW='right:65%'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!{.git,node_modules}/**"'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

export HOMEBREW_NO_INSTALL_FROM_API=1

source ~/.fzf.zsh

function flac-to-mp3 {
    for a in ./*.flac; do
        ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
    done
}

function flac-to-wav {
    for a in **/*.flac; do
      if [[ -f "${a[@]/%flac/wav}" ]]; then
        continue
      else
        ffmpeg -n -i "$a" -qscale:a 0 "${a[@]/%flac/wav}"
      fi
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
export PATH="/opt/homebrew/opt/ruby@2.7/bin:./vendor/bundle/ruby/bin:$HOME/.bin:$HOMEBREW_PREFIX/bin:$HOME/Library/Python/3.9/bin:/usr/local/opt/openjdk@8/bin:./node_modules/.bin:$$HOME/.config/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$GEM_HOME/bin:$HOME/.node_modules/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:/bin:./vendor/bin:/usr/sbin/:/Library/TeX/texbin:$HOME/.local/bin:$HOME/go/bin"
export COWPATH="$HOME/.cowsay"
export ZDOTDIR="$HOME"

export CPPFLAGS="-I/usr/local/opt/openjdk@8/include"

export LESSOPEN="|lesspipe.sh %s"

export npm_config_prefix=~/.node_modules

eval "$(gdircolors ~/.dir_colors)"

export LIME_TOKEN="$(cat $HOME/.lime_token)"
export GPR_TOKEN="$(cat $HOME/.gpr_token)"
export TURBO_TOKEN="super-secret-turbo-token-2.0"
export GITHUB_TOKEN="$GPR_TOKEN"

# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH:/usr/local/texlive/2020basic/bin/x86_64-darwin"
export PATH="/opt/homebrew/opt/python@3.11/bin:$PATH;"

export JAVA_HOME="$(/usr/libexec/java_home)"

export ESLINT_D_LOCAL_ESLINT_ONLY=true

plugins=(git tmux zsh-vi-mode zsh-autosuggestions fzf-tab)

source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/custom/plugins/forgit/forgit.plugin.zsh

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
alias gcopr='gh pr checkout'
alias gcp='git cherry-pick'
alias gs='git stash'
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

## GitHub aliases
alias ghpc='gh pr checkout'
alias ghpv='gh pr view -w'

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
alias n='next'
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
alias fd="fd --hidden"
alias apod="arch -x86_64 pod"
alias sor="cat opcos.txt | run"
alias scr="cat cfgs.txt | run"

# GrandVision
create-beta() {
  create-release \"$(next-version HEAD --pre-release beta)\" \"$(latest-tags beta | tail -1)\" HEAD
}

create-rc() {
  create-release \"$(next-version HEAD --pre-release rc)\" \"$(latest-tags rc | tail -1)\" HEAD
}

source "/opt/homebrew/etc/profile.d/z.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jordansalazar/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jordansalazar/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jordansalazar/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jordansalazar/opt/anaconda3/bin:$PATH"
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

# alias glNoGraph='git log --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr% C(auto)%an" "$@"'
# _gitLogLineToHash="echo {} | grep -o '[a-f0-9]\{7\}' | head -1"
# _viewGitLogLine="$_gitLogLineToHash | xargs -I % sh -c 'git show --color=always % | delta'"

# git checkout fuzzy- checkout git commit with previews
# gcof() {
#   local commit
#   commit=$( glNoGraph |
#     fzf --no-sort --reverse --tiebreak=index --no-multi \
#     --ansi --preview="$_viewGitLogLine" ) &&
#     git checkout $(echo "$commit" | sed "s/ .*//")
#   }

# git show fuzzy - git commit browser with previews
# gsf() {
#   glNoGraph |
#     fzf --no-sort --reverse --tiebreak=index --no-multi \
#     --ansi --preview="$_viewGitLogLine" \
#     --header "enter to view, alt-y to copy hash" \
#     --bind "enter:execute:$_viewGitLogLine   | less -R" \
#     --bind "alt-y:execute:$_gitLogLineToHash | xclip"
#   }

# git checkout branch - checkout git branch (including remote branches), sorted by most recent commit, limit 30 last branches
gcobr() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

vgv() {
  local projects
  projects=$(fd --base-directory ~/www/grandvision -t=d -g '.git' | gsed 's/^\.\///g' | gsed 's/\/.git\///g')
  project=$(echo "$projects" | fzf) && cd "$HOME/www/grandvision/$project" && vv
}

# Custom fuzzy completion for "yw" command
#   e.g. yw **<TAB>
_fzf_complete_yw() {
  _fzf_complete --reverse --prompt="workspaces> " -- "$@" < <(
    yarn workspaces list --json | jq .name | sed 's/\"//g'
  )
}

#vault connect
vcon() {
	az login &&
	cloudflared access login "https://vault.grandvision.io" &&
	export TOKEN=$(cloudflared access token -app=https://vault.grandvision.io)
	export VAULT_ADDR='https://vault.grandvision.io'
	vault login -header=cf-access-token=$TOKEN -method=oidc role="azure"
	export VAULT_TOKEN=$(vault login -header=cf-access-token="$TOKEN" -method=oidc role="azure" 2>&1 | awk '/^token[[:space:]]+/{print $2}')
}

export forgit_checkout_commit=gcoc
export forgit_cherry_pick=gcpc

# bun completions
[ -s "/Users/jordansalazar/.bun/_bun" ] && source "/Users/jordansalazar/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
