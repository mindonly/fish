function ssharch --description 'connect to random arch server with ssh'
	set min_idx 1
    set max_idx 10
    set idx (random $min_idx $max_idx)
    
    if test $idx -lt $max_idx
        set host "arch0"$idx
    else
        set host "arch"$idx
    end
   
    ssh $host
end
