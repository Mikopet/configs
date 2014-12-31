# Alias of common operations
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'

alias doc='cd /usr/share/doc ; cd'

# Use colors when grepping
alias grep='grep --color=auto'

alias clive='clive --format=best'

alias install-symfony='SENSIOLABS_ENABLE_NEW_DIRECTORY_STRUCTURE=true composer create-project symfony/framework-standard-edition .'