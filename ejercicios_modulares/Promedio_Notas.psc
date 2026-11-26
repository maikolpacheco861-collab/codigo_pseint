Funcion promedio <- ingresar_notas
    Definir n1, n2, n3 Como Real
    Escribir "Ingrese la primera nota:"
    Leer n1
    Escribir "Ingrese la segunda nota:"
    Leer n2
    Escribir "Ingrese la tercera nota:"
    Leer n3
    promedio <- (n1+n2+n3)/3
FinFuncion
Funcion resultado <- calcular_promedio(promedio)
    resultado <- promedio
FinFuncion
Funcion mostrar_promedio(resultado)
    Escribir "El promedio de las notas es: ", resultado
FinFuncion
Algoritmo Promedio_Notas
    promedio <- ingresar_notas()
    resultado <- calcular_promedio(promedio)
    mostrar_promedio(resultado)
FinAlgoritmo