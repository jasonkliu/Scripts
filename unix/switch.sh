#!/bin/sh

# Switch PS1 prompts back and forth

# PS1="(\t) [$blue\u$reset_color] $yellow\W${reset_color}$(scm_prompt_info)$    reset_color $ "
# PS1='$ '

cd ~/.bash_it/themes/cleanpete/

diff cleanpete.theme.bash cleanpete.theme.bash.bak >/dev/null 2>&1

# Strange OSX bug: (need sed -i '' instead of sed -i, Linux ok)
# sed: 1: "cleanpete.theme.bash": command c expects \ followed by text

if [[ $? -eq 0 ]]; then # same file
    sed -i '' '15 s/PS1/#PS1/' cleanpete.theme.bash
    sed -i '' '21 s/#PS1/PS1/' cleanpete.theme.bash
    #echo "done"
else
    sed -i '' '15 s/#PS1/PS1/' cleanpete.theme.bash
    sed -i '' '21 s/PS1/#PS1/' cleanpete.theme.bash
    #echo "enod"
fi
