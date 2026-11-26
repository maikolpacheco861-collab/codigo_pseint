Funcion total <- ingresar_tiempos
    Definir t1, t2, t3 Como Real
    Escribir "Ingrese el primer tiempo:"
    Leer t1
    Escribir "Ingrese el segundo tiempo:"
    Leer t2
    Escribir "Ingrese el tercer tiempo:"
    Leer t3
    total <- t1+t2+t3
FinFuncion
Funcion resultado <- calcular_tiempo(total)
    resultado <- total
FinFuncion
Funcion mostrar_tiempo(resultado)
    Escribir "El tiempo total del viaje es: ", resultado, " horas"
FinFuncion
Algoritmo Tiempo_Viaje
    total <- ingresar_tiempos()
    resultado <- calcular_tiempo(total)
    mostrar_tiempo(resultado)
FinAlgoritmo