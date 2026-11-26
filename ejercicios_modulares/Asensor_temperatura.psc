Funcion temperatura <- ingresar_temperatura
    Escribir "Ingrese la temperatura ambiente:"
    Leer temperatura
FinFuncion
Funcion piso <- ingresar_piso
    Escribir "Ingrese el piso al que desea ir (1-10):"
    Leer piso
FinFuncion
Funcion resultado <- verificar_temperatura(temperatura)
    Si temperatura>=18 Y temperatura<=25 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion resultado <- verificar_piso(piso)
    Si piso>=1 Y piso<=10 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion mover_ascensor(piso, temp_valida, piso_valido)
    Si temp_valida = Verdadero Entonces
        Si piso_valido = Verdadero Entonces
            Escribir "Temperatura adecuada"
            Escribir "El ascensor se mueve al piso ", piso
        SiNo
            Escribir "Error: El piso ingresado no es valido"
        FinSi
    SiNo
        Escribir "Temperatura no adecuada"
        Escribir "El ascensor no puede moverse"
    FinSi
FinFuncion
Algoritmo Ascensor_Temperatura
    Definir temperatura Como Real
    Definir piso Como Entero
    Definir temp_valida, piso_valido Como Logico
    temperatura <- ingresar_temperatura()
    piso <- ingresar_piso()
    temp_valida <- verificar_temperatura(temperatura)
    piso_valido <- verificar_piso(piso)
    mover_ascensor(piso, temp_valida, piso_valido)
FinAlgoritmo