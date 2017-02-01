function Create-AppPool ($AppPoolName){

    If(Test-Path -Path IIS:\AppPools\$AppPoolName){
        Write-Output "La Application Pool existe"
    }

    else{
        New-WebAppPool -Name $AppPoolName -Verbose
        Write-Output "La Application Pool no existia y ha sido creada"
    }
}

function Create-PhysicalPath ($PhysicalPath,$SourceFolder){
    
    If (Test-Path -Path $PhysicalPath){
        Write-Output "La ruta fisica existe. Borrando contenido Actual"
        Remove-Item -Path $PhysicalPath\* -Recurse -Force
        Copy-Item -Recurse -path $SourceFolder\* -destination $PhysicalPath -Verbose
    }
    else{
        Copy-Item -Recurse -path $SourceFolder -destination $PhysicalPath -Verbose
        Write-Output "La ruta fisica no existia y ha sido creada"
    }
}

function Create-Website ($WebsiteName,$PhysicalPath,$AppPoolName){

    if (Test-Path -Path IIS:\Sites\$WebsiteName){
         Write-Output "La Pagina Web existe. Modificando valores..."
         Set-ItemProperty -Path IIS:\Sites\$WebsiteName -Name applicationPool -Value $AppPoolName -Verbose
         Set-ItemProperty -Path IIS:\Sites\$WebsiteName -Name physicalPath -Value $PhysicalPath -Verbose
    }

    else{         
         New-Website -Name $WebsiteName -PhysicalPath $PhysicalPath -Verbose -ApplicationPool $AppPoolName         
         Write-Output "La Pagina Web no existia y ha sido creada"
    }
}

function Setup-Environment ($WebsiteName,$PhysicalPath,$SourceFolder,$AppPoolName){
    #CrearAppPool
    Create-AppPool -AppPoolName $AppPoolName

    #CrearPhysicalPath
    Create-PhysicalPath -PhysicalPath $PhysicalPath -SourceFolder $SourceFolder

    #CrearWebsite
    Create-Website -WebsiteName $WebsiteName -PhysicalPath $PhysicalPath -AppPoolName $AppPoolName   
}