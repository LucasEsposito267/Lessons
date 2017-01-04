cd C:\Lucas\Textos

$ListOfFIles = Get-ChildItem

foreach($file in $ListOfFIles){
    Write-Output "El valor de FILE es: $($file.fullname)"
    Remove-Item $file -Verbose
}


#$FileToDelete = "Saludo.txt"

#Remove-Item $FileToDelete -Verbose