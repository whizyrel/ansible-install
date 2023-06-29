cat << EOF >> $HOME/.zshrc
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Library" ] ; then
    PATH="$HOME/Library/Python/3.10/bin:$PATH"
fi
EOF
