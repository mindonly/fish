# Defined in /tmp/fish.X9UE9J/checklab.fish @ line 2
function checklab --description "check CIS lab machines for users and uptime"
	set idx_min 1
    switch $argv[1]
        case arch
            set idx_max 10
        case eos
            set idx_max 32
        case '*'
            return
    end
    set idx_array (seq -w $idx_min $idx_max)
    set boxes (for idx in $idx_array; echo $argv[1]$idx; end)
    for box in $boxes
        printf '\n%s\n%s\n' $box '------'
        ssh $box "uptime; who"
    end
end
