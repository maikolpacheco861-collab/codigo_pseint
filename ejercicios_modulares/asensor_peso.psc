Funcion peso <- ingresar_peso
    Escribir "Ingrese su peso en kilogramos:"
    Leer peso
FinFuncion
Funcion piso <- ingresar_piso
    Escribir "Ingrese el piso al que desea ir (1-10):"
    Leer piso
FinFuncion
Funcion resultado <- verificar_peso(peso)
    Si peso<=150 Y peso>0 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion mover_ascensor(peso, piso, resultado)
    Si resultado = Verdadero Entonces
        Si piso>=1 Y piso<=10 Entonces
            Escribir "Peso permitido"
            Escribir "El ascensor se mueve al piso ", piso
        SiNo
            Escribir "Error: Piso no valido"
        FinSi
    SiNo
        Escribir "Ascensor sobrecargado"
    FinSi
FinFuncion
Algoritmo Ascensor_Peso
    Definir peso Como Real
    Definir piso Como Entero
    Definir resultado Como Logico
    peso <- ingresar_peso()
    piso <- ingresar_piso()
    resultado <- verificar_peso(peso)
    mover_ascensor(peso, piso, resultado)
FinAlgoritmo
