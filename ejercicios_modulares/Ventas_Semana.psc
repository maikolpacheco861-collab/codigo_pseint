Funcion total <- ingresar_ventas
    Definir i, venta Como Entero
    total <- 0
    Para i <- 1 Hasta 7 Hacer
        Escribir "Ingrese la venta del dia ", i
        Leer venta
        total <- total+venta
    FinPara
FinFuncion
Funcion resultado <- calcular_ventas(total)
    resultado <- total
FinFuncion
Funcion mostrar_ventas(resultado)
    Escribir "El total de ventas de la semana es: $", resultado
FinFuncion
Algoritmo Ventas_Semana
    total <- ingresar_ventas()
    resultado <- calcular_ventas(total)
    mostrar_ventas(resultado)
FinAlgoritmo