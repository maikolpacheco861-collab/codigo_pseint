Funcion temperatura <- tomar_temperatura
    Definir temperatura Como Real;
    Escribir "digite la temperatura actual en grados C:";
    Leer temperatura;
FinFuncion
Funcion mostrar_alerta(temperatura)
    Escribir "ALERTA: temperatura fuera del rango (", temperatura, " grados C).";
    Si temperatura < 18 Entonces
        Escribir "La temperatura es muy baja.";
    SiNo
        Escribir "La temperatura es muy alta.";
    FinSi
FinFuncion
Algoritmo sensor_temperatura
    Definir temperatura Como Real;
    Definir enRango Como Logico;
    enRango = Falso;
    Mientras enRango = Falso Hacer
        temperatura = tomar_temperatura();
        Si temperatura >= 18 Y temperatura <= 25 Entonces
            enRango = Verdadero;
            Escribir "Temperatura dentro del rango necesario: ", temperatura, " grados C.";
        SiNo
            mostrar_alerta(temperatura);
        FinSi
    FinMientras
FinAlgoritmo
