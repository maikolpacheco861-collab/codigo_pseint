Funcion esEstudiante <- ingresar_estudiante
	Escribir "¿Es usted estudiante? (Verdadero/Falso):"
	Leer esEstudiante
FinFuncion

Funcion valor_estudiante <- verificar_estudiante(esEstudiante)
    valor_estudiante <- esEstudiante
FinFuncion

Funcion mostrar_estudiante(valor_estudiante)
    Escribir "¿Es usted estudiante? ", valor_estudiante
FinFuncion

Algoritmo Estudiante_Usuario
    esEstudiante <- ingresar_estudiante()
    valor_estudiante <- verificar_estudiante(esEstudiante)
    mostrar_estudiante(valor_estudiante)
FinAlgoritmo

