#
# config.fish

set SHELL "/usr/bin/fish"       # for keychain
set EDITOR "/usr/bin/vim"
set PATH $PATH /home/sanch/.local/bin /home/sanch/Dropbox/bin
set fish_greeting               # disable greeting
fish_vi_key_bindings            # enable vi mode

# abbreviations & aliases
abbr -a t task
abbr -a h history
abbr -a tl 'task list'
abbr -a gst 'git status'
abbr -a python python3
abbr -a ytdl youtube-dl
abbr -a svpn 'sudo openconnect --juniper vpn.student.gvsu.edu -u sanchrob'
alias sudo='sudo '
alias octave='octave --no-gui'

if status is-login
    eval (keychain --agents ssh --eval id_rsa)
end

/home/sanch/Dropbox/bin/zbs     # Zenbitchslap
