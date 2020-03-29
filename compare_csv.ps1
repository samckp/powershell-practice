# Path of the 2 CSVs you want to compare
$csv1 = Import-Csv -Path F:\github\Powershell\powershell-practice\server.csv -delimiter ","  
$csv2 = Import-Csv -Path F:\github\Powershell\powershell-practice\server1.csv -delimiter "," 

$end     = $csv1.Count
$count   = 0
$diffobj = @()
    
  do{
    
    if(!($csv1[$count].id -eq $csv2[$count].id) -and !($csv1[$count].IPAddress -eq $csv2[$count].IPAddress)){
       $diffobj += $csv1[$count]
    } 
		 
  $count++
  }until($count -eq $end)

  $diffobj | export-csv F:\github\Powershell\powershell-practice\out.csv -NoTypeInformation