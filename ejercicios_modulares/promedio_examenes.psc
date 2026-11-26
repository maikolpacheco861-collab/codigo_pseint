Funcion nota <- tomar_nota
    Definir nota Como Real;
    Repetir
        Escribir "Ingrese el resultado del examen (0 a 5):";
        Leer nota;
        Si nota < 0 O nota > 5 Entonces
            Escribir "Error: la nota debe estar entre 0 y 5.";
        FinSi
    Hasta Que nota >= 0 Y nota <= 5
FinFuncion
Funcion estado <- determinar_estado(promedio)
    Definir estado Como Caracter;
    Si promedio >= 3 Entonces
        estado = "APROBADO";
    SiNo
        estado = "REPROBADO";
    FinSi
FinFuncion
Funcion mostrar_mensaje(promedio, estado, total)
    Escribir "----- Resultado final -----";
    Escribir "Examenes ingresados: ", total;
    Escribir "Promedio: ", promedio;
    Escribir "Estado: ", estado;
FinFuncion
Algoritmo promedio_examenes
    Definir nota, suma, promedio Como Real;
    Definir total Como Entero;
    Definir estado, respuesta Como Caracter;
    suma = 0;
    total = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        nota = tomar_nota();
        suma = suma + nota;
        total = total + 1;
        Escribir "Desea ingresar otro resultado? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    Si total > 0 Entonces
        promedio = suma / total;
        estado = determinar_estado(promedio);
        mostrar_mensaje(promedio, estado, total);
    SiNo
        Escribir "No se ingresaron resultados.";
    FinSi
FinAlgoritmo
