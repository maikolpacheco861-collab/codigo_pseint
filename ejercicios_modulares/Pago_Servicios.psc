Funcion total <- ingresar_consumos
    Definir luz, agua, gas Como Real
    Escribir "Ingrese el consumo de luz:"
    Leer luz
    Escribir "Ingrese el consumo de agua:"
    Leer agua
    Escribir "Ingrese el consumo de gas:"
    Leer gas
    total <- luz+agua+gas
FinFuncion
Funcion resultado <- calcular_servicios(total)
    resultado <- total
FinFuncion
Funcion mostrar_servicios(resultado)
    Escribir "El total a pagar por los servicios es: $", resultado
FinFuncion
Algoritmo Pago_Servicios
    total <- ingresar_consumos()
    resultado <- calcular_servicios(total)
    mostrar_servicios(resultado)
FinAlgoritmo