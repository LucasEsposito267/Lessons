#1 Te devuelve todo el objeto del proceso con sus propiedades mas importantes
get-process -Name Notepad

#2 Te devuelve unicamente la propiedad ID del objeto del proceso. Pero te lo devuelve con el header de la columna (el nombre de la columna que en este caso es "ID")
Get-Process -Name notepad | select Id

#3 Te devuelve unicamente la propiedad ID del objecto, pero solo el VALOR del ID sin su header
Get-Process -Name notepad | select -ExpandProperty Id

#4 Hay varias maneras de cambiarle el formato al output que te devuelve el commando. Fijate la diferencia entre estas dos
get-process -Name Notepad | Format-Table

get-process -Name Notepad | Format-List

#5 Otra cosa importante a tener en cuenta es que Powershell, por defecto, no te devuelve todas las propiedades del objeto sino solo las mas importantes. Si las queres ver todas tenes que hacerlo asi
Get-Process -Name notepad | Format-List -Property * #<-- Ahi le indicas que queres ver todas las propiedades. Vas a ver que son un monton mas

#6 Vos a su vez podrias elegir que propiedades queres ver. Quiero que aca abajo completes este comando para que solo muestre "Name", "ID" y "StartTime"
Get-Process -Name notepad | Format-List -Property #<-- Intenta poner el cursor despues del parametro "Property" y apreta Ctrl+Espacio (de ahora en mas le vamos a llamar "Intelisense" a esa hotkey/atajo)