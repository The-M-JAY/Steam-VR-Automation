#Script to kill steam games
# Latest version written 15/11/2025 12:14
# Jay . Email: iamyeeyeeasshaircut@gmail.com (yes that is a real email)
# function to find and kill steam games 
param ([Int32]$scriptmode =0)
function Stop-SteamGames{
# fetching all processes 
# scriptmode 1 means the script will kill steam games 
# scriptmode 2 means the script will kill steam games and kill steamvr
# scriptmode 3 means the script will kill steam games, steam vr and shutdown the pc
# scriptmode 4 means the script will abort shutdown 
$processes = Get-Process| Where-Object { $_.Path -like "*\Steam\steamapps\common\*"}
	if ($processes) {
		#here I filter out both the steam files into the process and then I also filter for crashpad handler , because somehow it is a protected system process
				$killprocesses = $processes | Where-Object { ($_.Path -notlike "*\Steam\steamapps\common\SteamVR*") -and ($_.ProcessName -notlike "crashpad_handler")}
				foreach($proc in $killprocesses) {
				Write-Host "Attempting to Terminate: $($proc.Name)"	
				Write-Host "Running Stop-Process"
				Stop-Process -Name $proc.Name -Force
				Start-Sleep -Seconds 5
				}	
	}
	else{
	Write-Host "No Steam games found running."
	}

}
function Stop-SteamVR{
	taskkill /im vrmonitor.exe
	taskkill /im vrmonitor.exe
	taskkill /im vrmonitor.exe
	taskkill /im vrmonitor.exe
	taskkill /im vrmonitor.exe
	taskkill /im vrmonitor.exe
	taskkill /im vrmonitor.exe
	
	
	taskkill /im discord.exe -f
	
	Write-Host "Waiting 15 seconds for Base Stations"
	
	Start-Sleep -Seconds 15
	
	
}
function Pc-Shutdown{
	shutdown /s
}
if($scriptmode -eq 1){
 
	Write-Host "Checking for running Steam-Games" 
	
	Stop-SteamGames
	}
if($scriptmode -eq 2){
 
	Write-Host "Checking for running Steam-Games" 
	
	Stop-SteamGames
	
	Write-Host "Killing SteamVR and Discord"
	
	Stop-SteamVR

	Start-Sleep 2}
if($scriptmode -eq 3){
 
	Write-Host "Checking for running Steam-Games" 
	
	Stop-SteamGames
	
	Write-Host "Killing SteamVR and Discord"/
	
	Stop-SteamVR

	Write-Host "Shutting down PC"

	Start-Sleep -Seconds 3

	Pc-Shutdown 

	
	Start-Sleep 2}
if($scriptmode -eq 4){ 
	
	shutdown /a
	
	Start-Sleep 2}
if($scriptmode -eq 0){
	Write-Host "Script skipped because scriptmode is at 0, please set scriptmode to 1-3 to execute specific commands"
	Start-Sleep 3
	}
Write-Host "Script Complete" 
Write-Host " If this script does not work please message it in the chat. If you can, record it" 

Stop-Process -name cmd