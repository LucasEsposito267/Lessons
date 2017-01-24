function Say-Hello($Name)
{
    Write-Output "Hello $name!"
}

##PASO A PASO

# Creas la funcion con la palabra FUNCTION

function

# Le das nombre a la funcion

function Get-ProcessByName

# Le pones parametros a la funcion

function Get-ProcessByName ($ProcessName)

# Le agregas logica a la funcion

function Get-ProcessByName ($ProcessName){
    #La logica iria aca
}

#Terminas la funcion

Function Get-ProcessByName ($ProcessName){

    Write-Output "Getting all processes with name [$ProcessName]..."
    
    Get-Process -Name $ProcessName

}

#FUNCIONES PARA CREAR ARCHIVOS

function CreateNewFile ($FilePath) {
New-Item -Path ($FilePath) -ItemType file -Verbose

}

#FUNCIONES CON IF Y ELSE

cls

function CreateFile ($filepath)
{
    If(Test-Path -Path $filepath){
        Write-Host "El archivo [$filepath] existe. No lo vamos a crear"
        
    }
    Else{
        Write-Host "El archivo [$filepath] no existe. Creandolo..."
        New-Item -Path $filepath -ItemType File -Verbose
    }     
}

function getformatteddate (){
    Get-Date -Format yyyyMdHmm
}

function BackupFiles($filepath){
    
   $File = Get-Item $filepath
   
   $BackupDirectory = "C:\tools\lucas\Backup"
       
   Copy-Item -Path $File.FullName -Destination $BackupDirectory -verbose -Force

   $date = getformatteddate

   $NewName = $file.BaseName + "_" + $date + $File.Extension   
   
   $Backupfile = Get-Item (join-path -Path $BackupDirectory -ChildPath $File.Name)
    
   Rename-Item -Path $Backupfile.fullname -NewName $NewName
    
}

#FUNCION PARA MOVER ARCHIVOS

function MoveFiles ($path) {

$AllFiles =  Get-ChildItem -Path $path -Include @("*.txt","*.jpg","*.bat") -Recurse

    foreach ($File in $AllFiles){

        if ($File.Extension -eq ".jpg"){
            Write-Host "El archivo $($file.name) Es un jpg"
        Move-Item -path $File.FullName -Destination "C:\Nueva\jpg\" -verbose

        }
        elseif ($File.Extension -eq ".txt"){
                Write-Host "El archivo $($file.name) Es un txt"
        Move-Item -path $File.FullName -Destination "C:\Nueva\txt\" -verbose
        }

        else {
            Write-Host "El archivo $($file.name) Es un bat"
      Move-Item -path $File.FullName -Destination "C:\Nueva\bat\" -verbose
        }
    }

}

#

function MoveFiles ($SourceFolder,$DestinationFolder){

    If(Test-Path -Path $DestinationFolder){
        
        Write-Output "La carpeta ya existe"
        
        New-Item -Path $destinationFolder -ItemType directory -Verbose
        
        Write-Output "La carpeta no existe, creandola..."
     
    }
    else{
        
        Write-Output "La carpeta no existe, creandola..."

        New-Item -Path $destinationFolder -ItemType directory -Verbose
         
    }

  Remove-Item -path $DestinationFolder\* -Verbose

  Copy-Item -path $sourcefolder\* -destination $DestinationFolder -Verbose

}
