cls
$PackageFound = $false # Man lete hain, You will build the actual logic

Import-Csv "C:\Users\vpandey\Desktop\data.csv" | 
ForEach-Object {
  if($PackageFound){
    $_ | Select-Object *, @{Name='Package Found (Yes/No)';Expression={'Yes'}}
  }
  else{
    $_ | Select-Object *, @{Name='Package Found (Yes/No)';Expression={'No'}}
  }
} | 
Export-Csv -Path "C:\Users\vpandey\Desktop\data_validated.csv"
