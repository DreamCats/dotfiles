
# -------zsh配置--------

setopt autocd
setopt pushdignoredups autopushd

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}
 
pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish


#-------------加载p10k-----------#

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# =======alias config
# alias classdb='mycli -h 10.225.109.181 -P 3306 -uclassroom_w -pOkakLOgjcVEPjJX_LCLWJuu3mgjybiJ3'

# ==== go config
# go配置
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export GOPROXY="https://go-mod-proxy.byted.org,https://goproxy.cn,https://proxy.golang.org,direct"
export GOPRIVATE="*.byted.org,*.everphoto.cn,git.smartisan.com"
export GOSUMDB="sum.golang.google.cn"
# BOE环境配置
export RUNTIME_IDC_NAME=boe
export APP_ENV=boe

# consul_http环境
export CONSUL_HTTP_HOST=10.37.50.177
export CONSUL_HTTP_PORT=2280
export TCE_PSM=ecom.video.devops

# java
#export PATH="$HOME/.jenv/bin:$PATH"
#eval "$(jenv init -)"
#export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"

# nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH=/Users/bytedance/Library/Python/2.7/bin:$PATH

# 设置virtualenvwrapper
export WORKON_HOME=~/Envs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# 打开终端自动启用
source /usr/local/bin/virtualenvwrapper.sh



#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# autojump

#[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export HOMEBREW_NO_AUTO_UPDATE=true


# alias

#alias zh=`z -t -I .`
alias gotest="go test -gcflags=all=-l -v ./method ./logic  -coverpkg=./... -coverprofile=cover.out"
alias gocover="go tool cover -html=cover.out"
export HOMEBREW_GITHUB_API_TOKEN=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
alias lg="lazygit"
alias gti="gitui"
