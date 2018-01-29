# Created by newuser for 5.3.1
zstyle :prompt:grml:left:items:host pre '%F{yellow}'
zstyle :prompt:grml:left:items:host post '%F{default}'
source ~/.zprofile

function virtual_env_prompt () {
    venv=${VIRTUAL_ENV+${VIRTUAL_ENV:t}}

    if [ "$venv" != "" ]; then
        REPLY="%F{magenta}[%F{blue}${venv}%F{magenta}]%F{default} "
    else
        REPLY=
    fi
}

function activate() {
    if [ -f bin/activate ]; then
        source bin/activate
    else
        echo "\e[31;1mNo venv found\e[m"
    fi
}

if ! grml_theme_has_token virtual-env; then
    grml_theme_add_token virtual-env -f virtual_env_prompt
fi

zstyle :prompt:grml:left:setup items rc change-root user at host path vcs virtual-env percent

