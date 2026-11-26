Funcion numero <- tomar_numero
    Definir numero Como Real;
    Definir entrada Como Caracter;
    Repetir
        Escribir "Ingrese un numero (o f para terminar):";
        Leer entrada;
        entrada = Minusculas(entrada);
        Si entrada = "fin" Entonces
            numero = 0;
        SiNo
            numero = ConvertirANumero(entrada);
            Si numero = 0 Y entrada <> "0" Entonces
                Escribir "Error: debe ingresar un numero valido.";
            FinSi
        FinSi
    Hasta Que entrada = "fin" O entrada = "0" O numero <> 0
FinFuncion
Funcion mostrar_mensaje(suma, total)
    Escribir "----- Resultado -----";
    Escribir "Numeros ingresados: ", total;
    Escribir "Suma total: ", suma;
FinFuncion
Algoritmo suma_numeros
    Definir suma, numero Como Real;
    Definir total Como Entero;
    Definir entrada, continuar Como Caracter;
    suma = 0;
    total = 0;
    continuar = "s";
    Mientras continuar = "s" Hacer
        Escribir "Ingrese un numero:";
        Leer entrada;
        numero = ConvertirANumero(entrada);
        Si entrada = "" O (numero = 0 Y entrada <> "0" Y entrada <> "0.0") Entonces
            Escribir "Error: el valor ingresado no es un numero valido.";
        SiNo
            suma = suma + numero;
            total = total + 1;
        FinSi
        Escribir "Desea ingresar otro numero? (s/n):";
        Leer continuar;
        continuar = Minusculas(continuar);
    FinMientras
    mostrar_mensaje(suma, total);
FinAlgoritmo
