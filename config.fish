#
# config.fish

set SHELL "/usr/bin/fish"       # for keychain
set EDITOR "/usr/bin/vim"
set PATH $PATH /home/sanch/.local/bin /home/sanch/Dropbox/bin
set fish_greeting               # disable greeting
fish_vi_key_bindings            # enable vi mode

# abbreviations & aliases
# git
abbr -a ga 'git add'
abbr -a gst 'git status'
abbr -a gcmsg 'git commit -m'
#
abbr -a t task
abbr -a h history
abbr -a tl 'task list'
abbr -a python python3
abbr -a ytdl youtube-dl
abbr -a svpn 'sudo openconnect --juniper vpn.student.gvsu.edu -u sanchrob'
#
alias sudo='sudo '
alias octave='octave --no-gui'

eval (keychain --agents ssh --eval id_rsa)
/home/sanch/Dropbox/bin/zbs     # Zenbitchslap
