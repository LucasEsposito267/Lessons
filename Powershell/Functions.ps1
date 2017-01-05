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

