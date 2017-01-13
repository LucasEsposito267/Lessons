#1 Te devuelve todo el objeto del proceso con sus propiedades mas importantes
get-process -Name Notepad

#2 Te devuelve unicamente la propiedad ID del objeto del proceso. Pero te lo devuelve con el header de la columna (el nombre de la columna que en este caso es "ID")
Get-Process -Name notepad | select Id

#3 Te devuelve unicamente la propiedad ID del objecto, pero solo el VALOR del ID sin su header
Get-Process -Name notepad | select -ExpandProperty Id
