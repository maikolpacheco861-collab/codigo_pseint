Funcion peso <- tomar_peso
    Definir peso Como Real;
    Repetir
        Escribir "Digite su peso en kg:";
        Leer peso;
        Si peso <= 0 Entonces
            Escribir "Error: el peso debe, ser un valor positivo.";
        FinSi
    Hasta Que peso > 0
FinFuncion
Funcion altura <- tomar_altura
    Definir altura Como Real;
    Repetir
        Escribir "Digite su altura en metros :"
        Leer altura;
        Si altura <= 0 Entonces
            Escribir "Error: la altura, debe ser un valor positivo.";
        FinSi
    Hasta Que altura > 0
FinFuncion
Funcion categoria <- clasificar_imc(imc)
    Definir categoria Como Caracter;
    Si imc < 18.5 Entonces
        categoria = "Bajo peso";
    SiNo
        Si imc < 24.9 Entonces
            categoria = "Peso normal";
        SiNo
            Si imc < 29.9 Entonces
                categoria = "Sobrepeso";
            SiNo
                categoria = "Obesidad";
            FinSi
        FinSi
    FinSi
FinFuncion
Funcion mensaje <- crear_mensaje(imc, categoria)
    Definir mensaje Como Caracter;
    mensaje = "Su IMC es: " + ConvertirATexto(imc) + " | Categoria: " + categoria;
FinFuncion
Funcion mostrar_mensaje(mensaje)
    Escribir mensaje
FinFuncion
Algoritmo imc_paciente
    Definir peso, altura, imc Como Real;
    Definir categoria Como Caracter;
    peso = tomar_peso();
    altura = tomar_altura();
    imc = peso / (altura * altura);
    categoria = clasificar_imc(imc);
    mostrar_mensaje(crear_mensaje(imc, categoria));
FinAlgoritmo
