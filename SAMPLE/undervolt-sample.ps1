$status = get-service -name "XTU3SERVICE" | Select-Object {$_.status} | format-wide
if ($status -ne "Running") { start-service -name "XTU3SERVICE"}
& 'C:\Program Files (x86)\Intel\Intel(R) Extreme Tuning Utility\Client\XTUCli.exe' -t -id 34 -v -165
sleep 4
stop-process -id $PID -force
