$logFile = "cryptoTest.txt"
$xmlOutputFile = "cryptoTest.xml"

$result = Get-Content $logFile | select -skip 1

foreach($line in $result){
    Write-Host $line
    if($line.startsWith("<?xml")){
        $line = "";
    }
}
Add-content $xmlOutputFile -value $result