$root_folders = @(

  'C:\Program Files'
  '\\OVN003\WRKGRP\'
  '\\EHNVN004\Daten\'
  '\\GROVN003\Shares$'
  '\\HDEVN003\LANAPPS\'
  '\\ESSVN004\Groups$'
  '\\HIGVN003\Group\'
  '\\NAPVN002\Groups$'
  '\\SJTVN002\Departments$'
  '\\TRYVN002\Groups$'
  '\\WRKVN003\group$'
  '\\ANDVN001\Wrkgroup$'
)

$root_folders | ForEach-Object {

  Get-ChildItem $_ | Select-Object Mode, Name, FullName
  # Get-ChildItem $_ -Recurse | Select-Object Mode, Name, FullName  # If you need recursive like folder inside another folder (then uncomment this)

}
