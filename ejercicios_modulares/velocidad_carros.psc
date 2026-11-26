Funcion velocidad <- calcular_velocidad(distancia, tiempo)
    velocidad <- distancia/tiempo
FinFuncion
Funcion mostrar_velocidad(v1, v2)
    Escribir "Velocidad del primer carro: ", v1, " km/h"
    Escribir "Velocidad del segundo carro: ", v2, " km/h"
FinFuncion
Algoritmo Velocidad_Carros
    Definir d1, d2, t1, t2 Como Real
    Definir v1, v2 Como Real
    Escribir "Ingrese la distancia del primer carro en km:"
    Leer d1
    Escribir "Ingrese el tiempo del primer carro en horas:"
    Leer t1
    Escribir "Ingrese la distancia del segundo carro en km:"
    Leer d2
    Escribir "Ingrese el tiempo del segundo carro en horas:"
    Leer t2
    v1 <- calcular_velocidad(d1, t1)
    v2 <- calcular_velocidad(d2, t2)
    mostrar_velocidad(v1, v2)
FinAlgoritmo