Funcion celsius <- ingresar_temperatura
    Escribir "Ingrese la temperatura en Celsius:"
    Leer celsius
FinFuncion
Funcion fahrenheit <- convertir_temperatura(celsius)
    fahrenheit <- (celsius*9/5)+32
FinFuncion
Funcion mostrar_temperatura(fahrenheit)
    Escribir "La temperatura en Fahrenheit es: ", fahrenheit
FinFuncion
Algoritmo Celsius_Fahrenheit
    celsius <- ingresar_temperatura()
    fahrenheit <- convertir_temperatura(celsius)
    mostrar_temperatura(fahrenheit)
FinAlgoritmo