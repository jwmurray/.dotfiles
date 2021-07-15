
abbr -aU -- redaemon 'sudo systemctl daemon-reload'

function reo
	 sudo systemctl restart orthanc
end

function rec
	 sudo systemctl daemon-reload
	 sudo systemctl restart controller
end

function reoc
	 reo
	 sleep 1
	 rec
end


function tailc
	 tail -f -n 100 /var/log/vaso-controller/0.controller.log
end

function tailo
	 tail -f -n 100  /var/log/orthanc/Orthanc.log
end