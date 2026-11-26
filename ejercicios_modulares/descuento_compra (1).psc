Funcion total <- ingresar_compra
    Definir precio Como Real
    Escribir "Ingrese el valor de la compra:"
    Leer precio
    total <- precio
FinFuncion
Funcion descuento <- calcular_descuento(total)
    descuento <- total*0.10
FinFuncion

Funcion mostrar_descuento(total, descuento)
    Escribir "Descuento aplicado: $", descuento
    Escribir "Precio final: $", total-descuento
FinFuncion
Algoritmo Descuento_Compra
    total <- ingresar_compra()
    descuento <- calcular_descuento(total)
    mostrar_descuento(total, descuento)
FinAlgoritmo