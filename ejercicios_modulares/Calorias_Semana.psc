Funcion calorias <- ingresar_calorias
    Definir desayuno, almuerzo, cena Como Real
    Escribir "Ingrese las calorias del desayuno:"
    Leer desayuno
    Escribir "Ingrese las calorias del almuerzo:"
    Leer almuerzo
    Escribir "Ingrese las calorias de la cena:"
    Leer cena
    calorias <- desayuno+almuerzo+cena
FinFuncion
Funcion total <- calcular_semana(calorias)
    total <- calorias
FinFuncion
Funcion mostrar_calorias(dia, total)
    Escribir "Calorias del dia: ", dia
    Escribir "Calorias de la semana: ", total
FinFuncion
Algoritmo Calorias_Semana
    Definir i Como Entero
    Definir dia, total Como Real
    total <- 0
    Para i <- 1 Hasta 7 Hacer
        Escribir "Dia ", i
        dia <- ingresar_calorias()
        total <- total+dia
        Escribir "Total del dia: ", dia
    FinPara
    mostrar_calorias(dia, total)
FinAlgoritmo
