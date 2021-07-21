function vbshutdown
	vboxmanage $argv[1] acpipowerbutton
end

function vbstart
	vboxmanage startvm --type headless $argv[1]
end


function vblv
	vboxmanage list vms $argv[1] 
end

function vblr
	vboxmanage list runningvms 
end

function vbldisks
	vboxmanage list hdds
end