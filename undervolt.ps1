$status = get-service -name "XTU3SERVICE" | Select-Object {$_.status} | format-wide
if ($status -ne "Running") { start-service -name "XTU3SERVICE"}
& 'YOUR XTUCli.exe PATH' -t -id 34 -v -YOUR VOLTAGE OFFSET
sleep 4
stop-process -id $PID -force
