export ZSH="/Users/bytedance/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  extract
  z
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

#---------------------------设置主题的相关配置-----------------------

export TERM="xterm-256color"

POWERLEVEL9K_MODE='nerdfont-complete'

# 设置 oh-my-zsh powerlevel9k 主题左边元素显示
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
# 设置 oh-my-zsh powerlevel9k 主题右边元素显示
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator background_jobs time)

POWERLEVEL9K_CONTEXT_TEMPLATE="sisi"

#新起一行显示命令 (推荐！极其方便）
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#右侧状态栏与命令在同一行
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVE9K_SHORTEN_STRATEGY="truncate_from_right"

#添加连接上下连接箭头更方便查看
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "

# Git仓库状态的色彩指定
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
