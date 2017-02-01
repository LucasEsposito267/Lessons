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

<#
4)
Fijate que "Test-Path -path IIS:\Sites\$WebSiteName" unicamente funciona si antes te encargaste importar el modulo "WebADministration". Sin ese modulo, el DRIVE IIS:\ no estaria montado.

Quiero que hagas una funcion que se llame "ImportModule" y que se encarge de importar el modulo que yo quiera si es que este no esta importado todavia.

Para ejecutarla quiero hacer "ImportModule -ModuleName WebAdministration"

Tip 1: Si para IMPORTAR un modulo corres "Import-Module", que comando crees que vas a tener que usar para ver si el modulo esta cargado?
#>

#5) Quiero que cambies todos los textos en español a Ingles :)