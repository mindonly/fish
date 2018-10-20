#
# config.fish

set PATH $PATH $HOME/bin $HOME/.local/bin $HOME/Dropbox/bin
set fish_greeting                   # disable greeting
fish_vi_key_bindings                # enable vi mode

# abbreviations & aliases
abbr -a ga 'git add'
abbr -a gst 'git status'
abbr -a gcmsg 'git commit -m'

abbr -a t task
abbr -a h history
abbr -a tl 'task list'
abbr -a python python3
abbr -a ytdl youtube-dl
abbr -a svpn 'sudo openconnect --juniper vpn.student.gvsu.edu -u sanchrob'

alias sudo='sudo '
alias octave='octave --no-gui'

# halfmoon macOS
if test (hostname) = "halfmoon.local"
    set SHELL "/usr/local/bin/fish"
    set EDITOR "/usr/local/bin/vim"
    abbr -a make 'gmake'
    abbr -a factor gfactor
    # ZBS
        if status --is-login
            /Users/sanch/Dropbox/bin/zbs
        end
end

# mindonly Kubuntu
if test (hostname) = "mindonly"
    set SHELL "/usr/bin/fish"
    set EDITOR "/usr/bin/vim"
    eval (keychain --agents ssh --eval id_rsa)
    /home/sanch/Dropbox/bin/zbs     # Zenbitchslap
end
