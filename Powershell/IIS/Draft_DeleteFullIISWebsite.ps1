function ImportModule ($ModuleName){

     if(Get-Module -Name $ModuleName -verbose){
    
     } 
     else{
       Import-Module -name $ModuleName 
       Write-Output "The module [$ModuleName] has been imported"
     }

}

function DeleteWebsite ($WebsiteName){

    if(Test-Path -Path IIS:\Sites\$WebsiteName){
         Remove-Website -name $websitename -verbose
         Write-Output "The Website [$WebsiteName] has been removed"
     }
    else{         
       
         Write-Output "The Website [$WebsiteName] doesn't exist"
    }
}


function DeleteApplicationPool ($AppPoolName){

    If(Test-Path -Path IIS:\AppPools\$AppPoolName){
    
        Remove-WebAppPool -name $AppPoolName -verbose
        Write-Output "The Application Pool [$AppPoolName] has been removed"
    }

    else{
        Write-Output "The Application Pool [$AppPoolName] doesn't exist"
      
    }
}

function DeletePhysicalPath ($PhysicalPath){
 
    If(Test-Path -Path $PhysicalPath){
        Remove-Item -path $PhysicalPath -verbose -force -recurse
        Write-Output "The directory [$PhysicalPath] has been removed"
    }
    
    else{
         Write-Output "The directory [$PhysicalPath] doesn't exist"
    }
} 
