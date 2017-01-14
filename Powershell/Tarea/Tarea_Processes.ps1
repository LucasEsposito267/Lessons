<#
El otro dia te explique como el comando Get-Process te muestra todos los procesos, igual que el administrador de tareas. 

En este archivo quiero que vayas poniendo abajo de cada linea verde el codigo que se te va pidiendo.

Estos ejercicios van a implicar que googlees bastante por tu cuenta. Esto es bastante mas facil que hacer una funcion, pero te va a servir para ejercitar la busqueda por cuenta propia.

#>


##Usa Get-Process para mostrar en pantalla todos los procesos que empiezan con la letra "P". Acordate de usar el *

Get-Process P* 


##Abri un notepad por tu cuenta. Usa Get-Process para mostrarme el ID del proceso del notepad. Todos los procesos tienen un numero de ID que hace que puedas distinguir cada proceso si tenes varios que se llaman igual.

$id = Get-process -name notepad | select -expandproperty Id
Write-Host "El ID es: $ID"

##Usa algun comando (vas a tener que googlear vos) para PARAR el proceso del notepad (es decir para cerrarlo).

stop-process -id 5080

#o
stop-process -name notepad

##Consegui todos los procesos que estan corriendo en la computadora, elegi las columnas Name, ID, StartTime y manda el resultado ese a un notepad. La keyword para googlear es "Output to a file"


