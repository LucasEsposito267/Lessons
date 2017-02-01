function DeleteWebsite ($WebsiteName){

    if(Test-Path -Path IIS:\Sites\$WebsiteName){
         Remove-Website -name $websitename -verbose
         Write-Output "El sitio web ha sido eliminado"
     }
    else{         
       
         Write-Output "El sitio web no existe y no pudo ser eliminado"
    }
}


function DeleteApplicationPool ($AppPoolName){

    If(Test-Path -Path IIS:\AppPools\$AppPoolName){
    
        Remove-WebAppPool -name $AppPoolName -verbose
        Write-Output "La Application Pool ha sido eliminada"
    }

    else{
        Write-Output "La Application Pool no existe y no pudo ser eliminada"
      
    }
}

function DeletePhysicalPath ($PhysicalPath){
 
    If(Test-Path -Path $PhysicalPath){
    Remove-Item -path $PhysicalPath -verbose
    Write-Output "El directorio donde se alojaban los archivos fisicos del sitio ha sido eliminado"
    }
    
    else{
         Write-Output "El directorio no se pudo eliminar"
         }
} 
