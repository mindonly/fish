function ssheos --description 'connect to random eos server with ssh'
	set min_idx 1
    set max_idx 32
    set idx (random $min_idx $max_idx)
    if test $idx -lt 10
        set host "eos0"$idx
    else
        set host "eos"$idx
    end
    ssh $host
end
