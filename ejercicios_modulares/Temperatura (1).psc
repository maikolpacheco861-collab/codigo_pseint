Funcion temperatura <- ingresar_temperatura
    Escribir "Ingrese la temperatura actual:"
    Leer temperatura
FinFuncion
Funcion resultado <- verificar_temperatura(temperatura)
    Si temperatura>=18 Y temperatura<=25 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion mostrar_temperatura(temperatura, resultado)
    Si resultado = Verdadero Entonces
        Escribir "La temperatura es adecuada: ", temperatura, " grados"
    SiNo
        Escribir "La temperatura esta fuera del rango deseado"
    FinSi
FinFuncion
Algoritmo Sensor_Temperatura
    Definir temperatura Como Real
    Definir resultado Como Logico
    temperatura <- ingresar_temperatura()
    resultado <- verificar_temperatura(temperatura)
    mostrar_temperatura(temperatura, resultado)
FinAlgoritmo