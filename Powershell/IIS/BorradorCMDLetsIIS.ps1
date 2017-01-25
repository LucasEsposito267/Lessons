function CreateAppPool ($AppPoolName){

    If(Test-Path -Path IIS:\AppPools\$AppPoolName){
        Write-Output "La Application Pool existe"
    }

    else{
        New-WebAppPool -Name $AppPoolName -Verbose
        Write-Output "La Application Pool no existia y ha sido creada"
    }

}
function CreatePhysicalPath ($PhysicalPath,$SourceFolder){
    
    If (Test-Path -Path $PhysicalPath){
        Write-Output "La ruta fisica existe"
    }
    else{
        Copy-Item -Recurse -path $SourceFolder -destination $PhysicalPath -Verbose
        Write-Output "La ruta fisica no existia y ha sido creada"
    }
}
function CreateWebsite ($WebsiteName,$PhysicalPath){

    if (Test-Path -Path IIS:\Sites\$WebsiteName){
         Write-Output "La Pagina Web existe"
    }

    else{
         New-Website -Name $WebsiteName -PhysicalPath $PhysicalPath -Verbose
    }
}

function SetupEnvironment ($WebsiteName,$PhysicalPath,$SourceFolder){
    #Esta es la funcion que orquesta todas las funcionalidades
    CreateAppPool -AppPoolName $WebsiteName
    CreatePhysicalPath -SourceFolder $SourceFolder -PhysicalPath $PhysicalPath
    CreateWebsite -WebsiteName $WebsiteName -PhysicalPath $PhysicalPath
}
