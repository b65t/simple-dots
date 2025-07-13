if status is-interactive
    set fish_greeting
end

function fish_prompt
printf  '%s' \
        (set_color normal) (set_color -o blue) " " \
        (set_color normal) (set_color -o black) " " 
end
function fish_right_prompt
printf '%s' \
    (set_color brblack) (prompt_pwd) \
    (set_color brblack) (fish_git_prompt) \
    (set_color white) " "
end

alias c="clear"
alias v="nvim"
alias ..="cd .."
alias ds="doas apk add"
alias dr="doas apk del"
alias dsy="doas apk update"
alias m="mkdir"
