
abbr -aU -- redaemon 'sudo systemctl daemon-reload'

function starto
	 sudo systemctl start orthanc
end

function startc
	 sudo systemctl start controller
end

function stopo
	 sudo systemctl stop orthanc
end

function stopc
	 sudo systemctl stop controller
end

function reo
	 stopo
	 starto
end

function rec
	 sudo systemctl daemon-reload
	 stopc
	 startc
end

function reoc
	 reo
	 sleep 4
	 rec
end


function tailc
	 tail -f -n 100 /var/log/vaso-controller/0.controller.log
end

function tailo
	 tail -f -n 100  /var/log/orthanc/Orthanc.log
end