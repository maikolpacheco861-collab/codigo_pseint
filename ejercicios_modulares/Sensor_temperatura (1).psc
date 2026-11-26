Funcion temperatura <- ingresar_temperatura
    Escribir "Ingrese la temperatura actual:"
    Leer temperatura
FinFuncion
Funcion resultado <- verificar_temperatura(temperatura)
    Si temperatura>30 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion mostrar_alerta(temperatura, resultado)
    Si resultado = Verdadero Entonces
        Escribir "ALERTA: Temperatura por encima del umbral"
    SiNo
        Escribir "La temperatura es normal"
    FinSi
FinFuncion
Algoritmo Sensor_Temperatura
    Definir temperatura Como Real
    Definir resultado Como Logico
    temperatura <- ingresar_temperatura()
    resultado <- verificar_temperatura(temperatura)
    mostrar_alerta(temperatura, resultado)
FinAlgoritmo
