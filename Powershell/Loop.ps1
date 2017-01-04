#Single string
$AnimalSolo = "Gato"

#ARRAY of strings
$Animales = ("Gato","Perro","Pez")

foreach ($Animal in $Animales)
{
    "Arranca el loop"
    Write-host "El animal de esta vuelta es: $Animal"
    "Termina el loop"
} 

"Termina el loop para siempre"