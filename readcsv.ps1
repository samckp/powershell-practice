$computers = Import-CSV F:\github\Powershell\data.csv -delimiter ','
ForEach ($computer in $computers){
$computername = $($computer.Computername)
$ipaddress = $($computer.IPaddress)
$office = $($computer.Office)
$owner = $($computer.Owner)
Write-host $computername $ipaddress $office $owner
}