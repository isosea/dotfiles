alias -- g='cd $(ghq root)/$(ghq list | fzf --no-sort)'
alias -- ....='cd ../../..'
alias -- ...='cd ../..'
alias -- ..='cd ..'
alias -- c='code .'
alias -- ls='ls --color=auto'
alias -- ll='ls -al --color=auto'
alias -- be='bundle exec'

# docker
alias -- dp='docker ps'
alias -- da='docker attach $(docker ps --format "{{.Names}}" | fzf)'
alias -- de='docker exec -it $(docker ps --format "{{.Names}}" | fzf) /bin/bash'
## docker compose
alias -- dc='docker compose'
alias -- dce='docker compose exec'
alias -- dcb='docker compose build'
alias -- dcu='docker compose up -d'
alias -- dcs='docker compose stop'
alias -- dcd='docker compose down'
alias -- dcr='docker compose run --rm'
alias -- dcre='docker compose restart'

# xdg-ninja
alias adb='HOME="$XDG_DATA_HOME"/android adb'
