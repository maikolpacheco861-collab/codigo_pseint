Funcion paginas <- tomar_paginas(papel)
    Definir paginas Como Entero;
    Repetir
        Escribir "Papel disponible: ", papel, " hojas";
        Escribir "Ingrese la cantidad de paginas a imprimir:";
        Leer paginas;
        Si paginas <= 0 Entonces
            Escribir "Error: la cantidad debe ser un numero positivo.";
        FinSi
    Hasta Que paginas > 0
FinFuncion
Funcion mostrar_mensaje(paginas, restante)
    Escribir "----- Impresion realizada -----";
    Escribir "Paginas impresas: ", paginas;
    Escribir "Papel restante: ", restante, " hojas";
FinFuncion
Algoritmo impresora
    Definir papel, paginas Como Entero;
    papel = 20;
    Mientras papel > 0 Hacer
        paginas = tomar_paginas(papel);
        Si paginas > papel Entonces
            Escribir "Error: no hay papel suficiente. Maximo disponible: ", papel;
        SiNo
            papel = papel - paginas;
            mostrar_mensaje(paginas, papel);
        FinSi
        Si papel = 0 Entonces
            Escribir "La impresora se quedo sin papel.";
        FinSi
    FinMientras
FinAlgoritmo
