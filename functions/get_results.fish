# Defined in /tmp/fish.15VNZM/get_results.fish @ line 2
function get_results
	cd $HOME'/Dropbox/f2018/cis693/cis693_ms_project/data/results'
    rsync -e=ssh -tv \
        sanchrob@$argv:~/repos/cis693_ms_project/code/\*.{png,csv} .
    cd
end
