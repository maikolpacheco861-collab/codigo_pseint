Funcion piso <- ingresar_piso
    Escribir "Ingrese el piso al que desea ir (1-10):"
    Leer piso
FinFuncion
Funcion resultado <- verificar_piso(piso)
    Si piso>=1 Y piso<=10 Entonces
        resultado <- Verdadero
    SiNo
        resultado <- Falso
    FinSi
FinFuncion
Funcion mover_ascensor(piso, resultado)
    Si resultado = Verdadero Entonces
        Escribir "El ascensor se mueve al piso ", piso
    SiNo
        Escribir "Error: El piso ingresado no es valido"
    FinSi
FinFuncion
Algoritmo Ascensor
    Definir piso Como Entero
    Definir resultado Como Logico
	
    piso <- ingresar_piso()
    resultado <- verificar_piso(piso)
    mover_ascensor(piso, resultado)
FinAlgoritmo
