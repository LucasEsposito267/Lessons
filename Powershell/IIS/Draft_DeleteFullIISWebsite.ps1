function DeleteWebsite ($WebsiteName){

    if(Test-Path -Path IIS:\Sites\$WebsiteName){
         Remove-Website -name $websitename -verbose
         Write-Output "El sitio web [$WebsiteName] ha sido eliminado"
     }
    else{         
       
         Write-Output "El sitio web [$WebsiteName] no existe"
    }
}


function DeleteApplicationPool ($AppPoolName){

    If(Test-Path -Path IIS:\AppPools\$AppPoolName){
    
        Remove-WebAppPool -name $AppPoolName -verbose
        Write-Output "La Application Pool [$AppPoolName] ha sido eliminada"
    }

    else{
        Write-Output "La Application Pool [$AppPoolName] no existe"
      
    }
}

function DeletePhysicalPath ($PhysicalPath){
 
    If(Test-Path -Path $PhysicalPath){
        Remove-Item -path $PhysicalPath -verbose
        Write-Output "El directorio [$PhysicalPath] ha sido eliminado"
    }
    
    else{
         Write-Output "El directorio [$PhysicalPath] no existe"
    }
} 
