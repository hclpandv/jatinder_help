foreach($item in (Get-ChildItem -path C:\Users\pandeyv -Recurse | select Name, fullname)){
   if($item.name -like "*README*"){
       Write-Host $item.fullname
   }
}
