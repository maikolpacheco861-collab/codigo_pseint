Funcion edad <- calcular_edad(diaN, mesN, anioN, diaA, mesA, anioA)
    edad <- anioA-anioN
    Si mesA<mesN O (mesA=mesN Y diaA<diaN) Entonces
        edad <- edad-1
    FinSi
FinFuncion
Funcion mostrar_edades(edad1, edad2, edad3)
    Escribir "Edad de la primera persona: ", edad1
    Escribir "Edad de la segunda persona: ", edad2
    Escribir "Edad de la tercera persona: ", edad3
FinFuncion
Algoritmo Edad_Tres_Personas
    Definir d1, m1, a1, d2, m2, a2, d3, m3, a3 Como Entero
    Definir da, ma, aa Como Entero
    Definir edad1, edad2, edad3 Como Entero
    Escribir "Ingrese el dia actual:"
    Leer da
    Escribir "Ingrese el mes actual:"
    Leer ma
    Escribir "Ingrese el año actual:"
    Leer aa
    Escribir "Fecha de nacimiento de la primera persona:"
    Leer d1, m1, a1
    Escribir "Fecha de nacimiento de la segunda persona:"
    Leer d2, m2, a2
    Escribir "Fecha de nacimiento de la tercera persona:"
    Leer d3, m3, a3
    edad1 <- calcular_edad(d1,m1,a1,da,ma,aa)
    edad2 <- calcular_edad(d2,m2,a2,da,ma,aa)
    edad3 <- calcular_edad(d3,m3,a3,da,ma,aa)
    mostrar_edades(edad1,edad2,edad3)
FinAlgoritmo