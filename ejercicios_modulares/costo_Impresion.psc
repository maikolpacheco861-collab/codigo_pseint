Funcion paginas <- ingresar_paginas
    Escribir "Ingrese la cantidad de paginas:"
    Leer paginas
FinFuncion
Funcion precio <- ingresar_precio
    Escribir "Ingrese el precio por pagina:"
    Leer precio
FinFuncion
Funcion costo <- calcular_impresion(paginas, precio)
    costo <- paginas*precio
FinFuncion
Funcion mostrar_costo(costo)
    Escribir "El costo total de impresion es: $", costo
FinFuncion
Algoritmo Costo_Impresion
    paginas <- ingresar_paginas()
    precio <- ingresar_precio()
    costo <- calcular_impresion(paginas, precio)
    mostrar_costo(costo)
FinAlgoritmo
