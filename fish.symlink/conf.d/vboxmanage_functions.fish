function vbshutdown
	vboxmanage $argv[1] acpipowerbutton
end

function vbstart
	vboxmanage startvm --type headless $argv[1]
end


function vbl
	vboxmanage list vms $argv[1] 
end

function vbr
	vboxmanage list runningvms 
end

function frel
    source ~/.config/fish/config.fish
end
