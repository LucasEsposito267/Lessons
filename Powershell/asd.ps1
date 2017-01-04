Set-Location "C:\Lucas"
Get-ChildItem | Where-Object { $_.Length -gt 1KB }
Get-Help Get-Command -examples
Get-ChildItem | Sort-Object
Get-ChildItem | Sort-Object Length
csl
cls
dir
Get-ChildItem | Where-Object {$_. Length -gt 6KB } | Sort-Object Length | Format-Table -Property Name, Length -Autosize
$hi = "Hola"
New-Variable -Name Var -Value 121
$Var 
Remove-Variable -Name Var
Get-Variable -Name Var 
"Cualq'uiera"
