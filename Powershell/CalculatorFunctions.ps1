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
       
#FUNCION > o <
function SearchNumber ([int]$numero1,[int]$numero2)

{

If($numero1 -ge $numero2){
Write-Host "$numero1 es mayor que $numero2"}

Else{Write-Host "$numero2 es mayor que $numero1"}

}
       
  function CompareNumber ([int]$numero1,[int]$numero2)
{
    If($numero1 -gt $numero2){
        Write-Host "Numero1 [$numero1] es mayor que Numero2 [$numero2]"
    }
    elseif($numero1 -eq $numero2){
        Write-host "Numero1[$numero1] y Numero2[$numero2] son iguales"
    }

    Else{
        Write-Host "Numero2 [$numero2] es mayor que Numero1 [$numero1]"
    }
}     
