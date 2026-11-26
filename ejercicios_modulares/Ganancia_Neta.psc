Funcion ingresos <- ingresar_ingresos
    Escribir "Ingrese los ingresos:"
    Leer ingresos
FinFuncion
Funcion gastos <- ingresar_gastos
    Escribir "Ingrese los gastos:"
    Leer gastos
FinFuncion
Funcion ganancia <- calcular_ganancia(ingresos, gastos)
    ganancia <- ingresos-gastos
FinFuncion
Funcion mostrar_ganancia(ganancia)
    Escribir "La ganancia neta es: $", ganancia
FinFuncion
Algoritmo Ganancia_Neta
    ingresos <- ingresar_ingresos()
    gastos <- ingresar_gastos()
    ganancia <- calcular_ganancia(ingresos, gastos)
    mostrar_ganancia(ganancia)
FinAlgoritmo
