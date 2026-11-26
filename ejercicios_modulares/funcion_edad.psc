Funcion edad <- ingresar_edad
	Escribir "Ingrese su edad:"
	Leer edad
FinFuncion
Funcion valor_edad <- cantidad_años(edad)
    valor_edad <- edad
FinFuncion
Funcion mostrar_edad(valor_edad)
    Escribir "Usted tiene ", valor_edad, " años"
FinFuncion
Algoritmo Edad_Usuario
    edad <- ingresar_edad()
    valor_edad <- cantidad_años(edad)
    mostrar_edad(valor_edad)
FinAlgoritmo
