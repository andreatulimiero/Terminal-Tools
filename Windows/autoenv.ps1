remove-item -force alias:cd
function cd () { 
    if ((Test-Path "env\\Scripts\\activate.ps1") -and $args[0] -eq "..") {
        Invoke-Expression "deactivate"
    }
    Set-Location @args
    if (Test-Path "env\\Scripts\\activate.ps1") {
        Invoke-Expression "env/Scripts/activate.ps1"  
    }
 }