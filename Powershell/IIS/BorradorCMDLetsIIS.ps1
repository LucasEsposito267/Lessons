function CreateAppPool($AppPoolName){
    #Se encarga de que $AppPoolName exista
}

function CreatePhysicalPath ($SourceFolder,$PhysicalPath){
    #Se encarga de que $PhysicalPath exista y copia los contenidos de $SourceFolder
}

function CreateWebsite ($WebsiteName,$PhysicalPath){
    #Se encarga de que $WebsiteName exista y que apunte a $PhysicalPath
}

function SetupEnvironment ($WebsiteName,$PhysicalPath,$SourceFolder){
    #Esta es la funcion que orquesta todas las funcionalidades
    CreateAppPool -AppPoolName $WebsiteName
    CreatePhysicalPath -SourceFolder $SourceFolder -PhysicalPath $PhysicalPath
    CreateWebsite -WebsiteName $WebsiteName -PhysicalPath $PhysicalPath
}