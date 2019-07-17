param (
    [string]$admin_username = "Snumryk",
    [string]$admin_password = "Snumryk25!!!!!",
    [switch]$manual_install = $false
)



$script_name = "utils.psm1"
Import-Module "C:\$script_name"

Disable-ScheduleWorkflow
Disable-Devices
Disable-TCC
Enable-Audio
Install-VirtualAudio

Add-AutoLogin $admin_username $admin_password
Restart-Computer