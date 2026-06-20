# Public aliases and functions

alias devserver='uvicorn src.main:app --host 0.0.0.0 --port 8000 --reload'

alias reloadzsh='source ~/.zshrc'
alias zshconfig='${EDITOR:-nano} ~/.zshrc'
alias zshaliases='${EDITOR:-nano} ~/.config/zsh/aliases.zsh'

aws-ssm() {...}
aws-ssm-prod() {...}
