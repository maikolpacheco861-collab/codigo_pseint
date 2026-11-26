Funcion total <- calcular_producto(precio, cantidad)
    total <- precio*cantidad
FinFuncion
Funcion mostrar_ventas(total1, total2, total3)
    Escribir "Total del producto 1: $", total1
    Escribir "Total del producto 2: $", total2
    Escribir "Total del producto 3: $", total3
    Escribir "Total a pagar: $", total1+total2+total3
FinFuncion
Algoritmo Ventas_Productos
    Definir p1, p2, p3 Como Real
    Definir c1, c2, c3 Como Entero
    Definir total1, total2, total3 Como Real
    Escribir "Ingrese el precio del producto 1:"
    Leer p1
    Escribir "Ingrese la cantidad vendida:"
    Leer c1
    Escribir "Ingrese el precio del producto 2:"
    Leer p2
    Escribir "Ingrese la cantidad vendida:"
    Leer c2
    Escribir "Ingrese el precio del producto 3:"
    Leer p3
    Escribir "Ingrese la cantidad vendida:"
    Leer c3
    total1 <- calcular_producto(p1,c1)
    total2 <- calcular_producto(p2,c2)
    total3 <- calcular_producto(p3,c3)
    mostrar_ventas(total1,total2,total3)
FinAlgoritmo
