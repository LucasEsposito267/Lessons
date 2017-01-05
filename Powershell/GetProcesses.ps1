#Get all Processes
Get-Process

#Get Process by name
Get-Process -Name Notepad

#Stop Processes

Stop-Process -Name Notepad

Get-Process -Name Notepad | Stop-Process -Force