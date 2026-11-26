Funcion area <- ingresar_datos
    Definir base, altura Como Real
    Escribir "Ingrese la base:"
    Leer base
    Escribir "Ingrese la altura:"
    Leer altura
    area <- base*altura
FinFuncion
Funcion resultado <- calcular_area(area)
    resultado <- area
FinFuncion
Funcion mostrar_area(resultado)
    Escribir "El area del rectangulo es: ", resultado
FinFuncion
Algoritmo Area_Rectangulo
    area <- ingresar_datos()
    resultado <- calcular_area(area)
    mostrar_area(resultado)
FinAlgoritmo