#FUNCIONES CON PARAMETROS
function Add-Numbers ($Numero1,$numero2){
    $resultado = $Numero1 + $numero2
    Write-Host "La suma es: $resultado"
}

function Multiply-Numbers ($Numero1,$Numero2){
    $resultado = $Numero1 * $Numero2
    Write-Host "El resultado de la multiplication es: $resultado"
}

function Divide-Numbers ($Numero1,$Numero2){
    $resultado = $Numero1 / $Numero2
    Write-Host "El resultado de la division es: $resultado"
}

#FUNCIONES SIN PARAMETROS QUE PIDEN LOS DATOS EN LA LOGICA
function Substract-Numbers (){
    $Numero1 = Read-host -prompt "Ingreses primer numero"
    $Numero2 = Read-Host -Prompt "Ingrese segundo numero"

    $resultado = $Numero1 - $Numero2

    write-host "El resultado de la resta es: $resultado"

}


#FUNCTION WITH PARAMETERS OF A SPECIFIC TYPE
function AddAndMultiply ([int]$numero1,[int]$numero2,[int]$numero3){
       $resultado = ($numero1 + $numero2) * $numero3
       Write-Host "El resultado es $resultado"

       }
       
