# Defined in /tmp/fish.ZOVKEI/upd_repos.fish @ line 2
function upd_repos
	cd
    set host (hostname)
    if test $host = "mindonly"
        gitup repos
    else if test $host = "halfmoon.local"
        gitup dev
    end
    gitup .vim/*
end
