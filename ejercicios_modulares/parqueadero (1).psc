Funcion placa <- tomar_placa
    Definir placa Como Caracter;
    Escribir "Ingrese la placa del vehiculo:";
    Leer placa;
FinFuncion
Funcion hora <- tomar_hora
    Definir hora Como Caracter;
    Escribir "Ingrese la hora de ingreso (hh:mm):";
    Leer hora;
FinFuncion
Funcion linea <- crear_linea(placa, hora)
    Definir linea Como Caracter;
    linea = "Placa: " + placa + " | Hora de ingreso: " + hora;
FinFuncion
Funcion mostrar_mensaje(resumen, total)
    Escribir "----- Vehiculos registrados -----";
    Escribir resumen;
    Escribir "Total de vehiculos: ", total;
FinFuncion
Algoritmo parqueadero
    Definir num, i, total Como Entero;
    Definir placa, hora, resumen, linea Como Caracter;
    Repetir
        Escribir "Ingrese el numero de vehiculos que ingresaran:";
        Leer num;
        Si num <= 0 Entonces
            Escribir "Error: el numero de vehiculos debe ser positivo.";
        FinSi
    Hasta Que num > 0
    resumen = "";
    total = 0;
    Para i = 1 Hasta num Con Paso 1 Hacer
        Escribir "----- Vehiculo ", i, " -----";
        placa = tomar_placa();
        hora = tomar_hora();
		
        linea = crear_linea(placa, hora);
        resumen = resumen + linea + " / ";
        total = total + 1;
    FinPara
    mostrar_mensaje(resumen, total);
FinAlgoritmo
