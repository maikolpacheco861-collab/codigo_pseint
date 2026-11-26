Funcion tiempo <- ingresar_tiempo
    Escribir "Ingrese el tiempo trabajado en horas:"
    Leer tiempo
FinFuncion
Funcion tarifa <- ingresar_tarifa
    Escribir "Ingrese la tarifa por hora:"
    Leer tarifa
FinFuncion
Funcion costo <- calcular_costo(tiempo, tarifa)
    costo <- tiempo*tarifa
FinFuncion
Funcion mostrar_costo(costo)
    Escribir "El costo total es: $", costo
FinFuncion
Algoritmo Costo_Horas
    tiempo <- ingresar_tiempo()
    tarifa <- ingresar_tarifa()
    costo <- calcular_costo(tiempo, tarifa)
    mostrar_costo(costo)
FinAlgoritmo
