#--------------
#---- Functions
#--------------


Function Expand-ZIPFile($file, $destination) {
    $shell = new-object -com shell.application
    $ZIPfile = $shell.NameSpace($file)
    foreach($item in $zip.items()) {
        $shell.Namespace($destination).copyhere($item)
    }
}


Function Write-Log {
    Param (
        [Parameter(Mandatory = $True, Position = 0)] [String] $Message
    )    
    # Create log directory when needed
    If ((Test-Path -Path $LogDir) -eq $False) {
        New-Item $LogDir -Type Directory | Out-Null
    }
    $TimeStamp = "[" + (Get-Date -Format dd-MM-yy) + "," + (Get-Date -Format HH:mm:ss) + "] "
    $Log = $TimeStamp + $Message 
    # Write to screen
    Write-Host -Object $Message   
    # Write to log file
    Add-Content -Path $LogFile -Value $Log
}



# - Constants --------------------------------------------------------
$LogDir            = "C:\LogFiles"
$RegistryKey      = "HKLM:\SOFTWARE\COMP_NAME\Applications"
$TemplateDate      = "08-11-2016"

# - Script variables -------------------------------------
$ScriptDir       = Split-Path $MyInvocation.MyCommand.Path
$ScriptName      = $MyInvocation.MyCommand
