Funcion resultado <- tomar_resultado
    Definir resultado Como Caracter;
    Repetir
        Escribir "Digite el resultado del partido (ganado, perdido o empatado):";
        Leer resultado;
        resultado = Minusculas(resultado);
        Si resultado <> "ganado" Y resultado <> "perdido" Y resultado <> "empatado" Entonces
            Escribir "Error: resultado invalido.";
        FinSi
    Hasta Que resultado = "ganado" O resultado = "perdido" O resultado = "empatado"
FinFuncion
Funcion puntos <- otorgar_puntos(resultado)
    Definir puntos Como Entero;
    Segun resultado Hacer
        "ganado":   puntos = 3;
        "empatado": puntos = 1;
        De Otro Modo: puntos = 0;
    FinSegun
FinFuncion
Funcion mostrar_clasificacion(nombre, puntosganados, totalPuntos)
    Escribir "======== Clasificacion actual ========";
    Escribir "Equipo: ", nombre;
    Escribir "Partidos con puntos: ", puntosganados;
    Escribir "Puntos acumulados: ", totalPuntos;
	Escribir "======================================
FinFuncion
Algoritmo campeonato
    Definir nombre, resultado Como Caracter;
    Definir puntos, totalPuntos, partidos Como Entero;
    Definir continuar Como Caracter;
    Escribir "digite el nombre del equipo:";
    Leer nombre;
    totalPuntos = 0;
    partidos = 0;
    Repetir
        resultado = tomar_resultado;
        puntos = otorgar_puntos(resultado);
        totalPuntos = totalPuntos + puntos;
        partidos = partidos + 1;
        Escribir "Puntos otorgados en este partido: ", puntos;
		
        Escribir "Desea digitar otro partido? (si/no):";
        Leer continuar;
        continuar = Minusculas(continuar);
    Hasta Que continuar = "no"
    mostrar_clasificacion(nombre, partidos, totalPuntos);
FinAlgoritmo

