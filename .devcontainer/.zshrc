setopt nolistbeep
setopt no_beep
autoload -Uz colors && colors

bindkey "^[[1~"  beginning-of-line
bindkey "^[[H"  beginning-of-line
# Insert
bindkey -r "^[[2"
bindkey -r "^[[2~"
# Delete
bindkey "^[[3~" delete-char
# End
bindkey "^[[4~"  end-of-line
bindkey "^[[F"  end-of-line
# PageUp
bindkey -r "^[[5"
# PageDown
bindkey -r "^[[6"

# C-Right
bindkey "^[[1;5C" forward-word
# C-Left
bindkey "^[[1;5D" backward-word

PROMPT="%B%F{cyan}%~%f%b %f%# "
