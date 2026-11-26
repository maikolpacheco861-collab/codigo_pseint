Funcion total <- ingresar_compra
    Definir precio, cantidad Como Real
    Escribir "Ingrese el precio unitario:"
    Leer precio
    Escribir "Ingrese la cantidad:"
    Leer cantidad
    total <- precio*cantidad
FinFuncion
Funcion iva <- calcular_iva(total)
    iva <- total*0.19
FinFuncion
Funcion mostrar_compra(total, iva)
    Escribir "Total: $", total
    Escribir "IVA: $", iva
    Escribir "Total con IVA: $", total+iva
FinFuncion
Algoritmo Compra_IVA
    total <- ingresar_compra()
    iva <- calcular_iva(total)
    mostrar_compra(total, iva)
FinAlgoritmo