#---------------Variable
# Create a variable to hold input file path csv or txt
$inputFile = "C:\Users\pandeyv\Downloads\Inputs.csv"
# Create a variable to hold output log filepath
$logfile = "C:\Users\pandeyv\Downloads\actions.log"


#--------------Funtions to be used later (these are user defined functions)
function Write-Log($msg, $logfile){
  $timestamp = Get-Date -Format "[HH:mm MMddyy]"
  Write-Output "$timestamp $msg"
  "$timestamp $msg" | Out-File -FilePath $logfile -Append
}


#--------------Main logic
foreach($item in Import-Csv -Path $inputFile){
  Write-Log -msg "Started to read the Items from input file" -logfile $logfile
  $item
  Write-Log -msg "Read operation completed, perform action" -logfile $logfile
  # Perform-Action -input $item
  Write-Log -msg "Action completed" -logfile $logfile 
  
}
