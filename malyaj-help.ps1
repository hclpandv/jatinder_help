foreach($item in (Get-ChildItem -path C:\Users\pandeyv -Recurse | select Name, fullname)){
   if($item.name -like "*README*"){
       Write-Host $item.fullname
   }
}


### OR

Get-ChildItem -path C:\Users\pandeyv -Recurse `
|Select-Object Name, fullname `
|Where-Object {
  $_.Name -like "*README*"

} 
