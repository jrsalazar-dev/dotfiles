# Environment variables
set -x TMUX_TMPDIR ~/.config/tmux/tmp
set -x BAT_THEME "Dracula"
set -x FZF_PREVIEW_PREVIEW_BAT_THEME "Dracula"
set -x FZF_PREVIEW_ADVANCED true
set -x FZF_PREVIEW_WINDOW 'right:65%'
set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!{.git,node_modules}/**"'
set -x FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border'
set -x HOMEBREW_NO_INSTALL_FROM_API 1
set -x GEM_HOME ~/.gem
set -x GEM_PATH ~/.gem
set -x EDITOR nvim
set -x COWPATH "$HOME/.cowsay"
set -x ZDOTDIR "$HOME"
set -x CPPFLAGS "-I/usr/local/opt/openjdk@8/include"
set -x LESSOPEN "|lesspipe.sh %s"
set -x npm_config_prefix ~/.node_modules
set -x JAVA_HOME "(/usr/libexec/java_home)"
set -x ESLINT_D_LOCAL_ESLINT_ONLY true
set -x BUN_INSTALL "$HOME/.bun"
set -x ANTHROPIC_BASE_URL "https://api.z.ai/api/anthropic"
set -x ANTHROPIC_MODEL "glm-4.6"

# Load tokens from files
if test -f ~/.lime_token
    set -x LIME_TOKEN (cat ~/.lime_token)
end
if test -f ~/.gpr_token
    set -x GPR_TOKEN (cat ~/.gpr_token)
    set -x GITHUB_TOKEN $GPR_TOKEN
end
if test -f ~/.zai_token
    set -x ZAI_TOKEN (cat ~/.zai_token)
    set -x ANTHROPIC_AUTH_TOKEN $ZAI_TOKEN
end

# Setup Homebrew
eval (/opt/homebrew/bin/brew shellenv)
if test -f /opt/homebrew/etc/profile.d/z.fish
    source /opt/homebrew/etc/profile.d/z.fish
end

# Setup dircolors
if command -v gdircolors >/dev/null
    eval (gdircolors -c ~/.dir_colors)
end

# PATH setup (fish_add_path automatically deduplicates and prepends)
fish_add_path /Applications/Docker.app/Contents/Resources/bin
fish_add_path $HOME/.bin
fish_add_path $HOMEBREW_PREFIX/bin
fish_add_path /usr/local/opt/openjdk@8/bin
fish_add_path ./node_modules/.bin
fish_add_path /usr/local/sbin
fish_add_path $HOME/.node_modules/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/go/bin
fish_add_path $HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin
fish_add_path /usr/local/texlive/2020basic/bin/x86_64-darwin
fish_add_path $BUN_INSTALL/bin
fish_add_path $HOME/.claude/local

# cdpath for quick directory jumping
set -g fish_user_paths $fish_user_paths $HOME/www

# Vim keybindings
set -g fish_key_bindings fish_vi_key_bindings

# Aliases
# Vim
alias vim='nvim'
alias v='vim'
alias vv='vim .'
alias vimc='vim ~/.config/nvim'

# Git aliases
alias ga='git add'
alias gc='git commit -m'
alias gac='git add -A && git commit -m'
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
alias glog='git log --graph --all --format=format:"%x1b[36m%h%C(reset) - %C(bold green)(%cr)%C(reset) %C(white)%s%C(reset) %C(bold white)— %cn%C(reset)%C(bold yellow)%d%C(reset)" --abbrev-commit --date=relative'
alias grss='git reset --soft HEAD~1'
alias grsh='git reset --hard HEAD~1'

# GitHub aliases
alias ghpc='gh pr checkout'
alias ghpv='gh pr view -w'

# Yarn
alias y='yarn'
alias yw='yarn workspace'
alias yb='yarn build'
alias yyb='y && y build'
alias ys='yarn start'

# Taskwarrior
alias t='task'

# Misc
alias l='ls --color -lah --group-directories-first'
alias mv='mv -v'
alias cp='cp -Rv'
alias bc='bc -l'
alias cat='bat'
alias mkdir='mkdir -pv'
alias safari='open -a "Safari"'
alias dns-flush='dscacheutil -flushcache'
alias show-hidden='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias show-full-path='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES'
alias wget-deps='wget -E -H -k -K -p'
alias rg="rg --hidden"
alias sshk="cat ~/.ssh/id_rsa.pub | pbcopy"
alias rn='react-native'
alias externalip="dig +short myip.opendns.com @resolver1.opendns.com"
alias internalip="ipconfig getifaddr en0"
alias fd="fd --hidden"
alias claude="~/.claude/local/claude"

# Disable default fish greeting
set fish_greeting ""

# Read fish completions from manpages
# fish_update_completions

# Reload fish config
function fish
    source ~/.config/fish/config.fish
end

# Print newlines after command execution
function postexec_test --on-event fish_postexec
    echo
end

# Functions
function flac-to-mp3
    for file in ./*.flac
        ffmpeg -i "$file" -qscale:a 0 (string replace -r '\.flac$' '.mp3' "$file")
    end
end

function flac-to-wav
    for file in **/*.flac
        set wav_file (string replace -r '\.flac$' '.wav' "$file")
        if not test -f "$wav_file"
            ffmpeg -n -i "$file" -qscale:a 0 "$wav_file"
        end
    end
end

function wav-to-mp3
    for file in ./*.WAV
        ffmpeg -i "$file" -qscale:a 0 (string replace -r '\.WAV$' '.mp3' "$file")
    end
end

function flac-to-m4a
    for file in *.flac
        ffmpeg -i "$file" -vf "crop=((in_w/2)*2):((in_h/2)*2)" -c:a alac (string replace -r '\.flac$' '.m4a' "$file")
    end
end

function bip
    set inst (brew search | fzf -m)
    if test -n "$inst"
        for prog in $inst
            brew install $prog
        end
    end
end

function gcobr
    set branches (git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)")
    set branch (echo "$branches" | fzf-tmux -d (math 2 + (echo "$branches" | wc -l)) +m)
    if test -n "$branch"
        git checkout (echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
    end
end

function vgv
    set projects (fd --base-directory ~/www/grandvision -t=d -g '.git' | gsed 's/^\.\///g' | gsed 's/\/.git\///g')
    set project (echo "$projects" | fzf)
    if test -n "$project"
        cd "$HOME/www/grandvision/$project"
        and vv
    end
end

function vcon
    az login
    and cloudflared access login "https://vault.grandvision.io"
    and set -x TOKEN (cloudflared access token -app=https://vault.grandvision.io)
    and set -x VAULT_ADDR 'https://vault.grandvision.io'
    and vault login -header=cf-access-token=$TOKEN -method=oidc role="azure"
    and set -x VAULT_TOKEN (vault login -header=cf-access-token="$TOKEN" -method=oidc role="azure" 2>&1 | awk '/^token[[:space:]]+/{print $2}')
end
