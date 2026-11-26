Funcion suma <- ingresar_numeros
    Definir n1, n2, n3, n4, n5 Como Real
    Escribir "Ingrese el primer numero:"
    Leer n1
    Escribir "Ingrese el segundo numero:"
    Leer n2
    Escribir "Ingrese el tercer numero:"
    Leer n3
    Escribir "Ingrese el cuarto numero:"
    Leer n4
    Escribir "Ingrese el quinto numero:"
    Leer n5
    suma <- n1+n2+n3+n4+n5
FinFuncion
Funcion resultado <- calcular_suma(suma)
    resultado <- suma
FinFuncion
Funcion mostrar_suma(resultado)
    Escribir "La suma es: ", resultado
FinFuncion
Algoritmo Suma_5_Numeros
    suma <- ingresar_numeros()
    resultado <- calcular_suma(suma)
    mostrar_suma(resultado)
FinAlgoritmo