# Defined in /tmp/fish.PNwgOf/archusers.fish @ line 2
function archusers
	set boxes arch01 arch02 arch03 arch04 arch05 arch06 arch07 arch08 arch09 arch10
    for box in $boxes
        printf '\n%s\n%s\n' $box "------"
        ssh $box "uptime; who"
    end
end
