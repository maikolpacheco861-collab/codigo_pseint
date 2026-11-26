Funcion imc <- calcular_imc(peso, altura)
    imc <- peso/(altura*altura)
FinFuncion
Funcion mostrar_imc(imc1, imc2)
    Escribir "El IMC de la primera persona es: ", imc1
    Escribir "El IMC de la segunda persona es: ", imc2
FinFuncion
Algoritmo IMC_Dos_Personas
    Definir peso1, peso2, altura1, altura2 Como Real
    Definir imc1, imc2 Como Real
    Escribir "Ingrese el peso de la primera persona en kg:"
    Leer peso1
    Escribir "Ingrese la altura de la primera persona en metros:"
    Leer altura1
    Escribir "Ingrese el peso de la segunda persona en kg:"
    Leer peso2
    Escribir "Ingrese la altura de la segunda persona en metros:"
    Leer altura2
    imc1 <- calcular_imc(peso1, altura1)
    imc2 <- calcular_imc(peso2, altura2)
    mostrar_imc(imc1, imc2)
FinAlgoritmo
