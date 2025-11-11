# zls实时记录hook
autoload -Uz add-zsh-hook
ZLS_HISTORY="$HOME/.zls_history"

preexec() {
    local cmd="$1"
    # 过滤目标命令
    if [[ "$cmd" =~ ^(codex|claude|zed|code|open)([[:space:]]|$) ]]; then
        echo "$(date +%s) | $(pwd) | $cmd" >> "$ZLS_HISTORY"
    fi
}

# 添加标题控制功能
case "$TERM" in
    xterm*|rxvt*|Eterm|aterm|kterm|gnome*|alacritty*|xterm-ghostty)
        # 设置标题显示当前目录和命令
        precmd () {
            printf "\033]0;%s@%s: %s\007" "$USER" "${HOST/.*}" "${PWD/#$HOME/~}"
        }
        ;;
esac
