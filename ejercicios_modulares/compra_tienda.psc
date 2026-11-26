Funcion precio <- obtener_precio(tipo)
    Definir precio Como Real;
    Segun tipo Hacer
        "A": precio = 10000;
        "V": precio = 260000;
        "E": precio = 560000;
        De Otro Modo:
            precio = 0;
    FinSegun
FinFuncion
Funcion cant <- tomar_cantidad
    Definir cant Como Entero;
    Repetir
        Escribir "digite la cantidad de unidades:";
        Leer cant;
        Si cant <= 0 Entonces
            Escribir "Error: la cantidad, debe ser un numero positivo.";
        FinSi
    Hasta Que cant > 0
FinFuncion
Funcion mensaje <- crear_mensaje(tipo, cant, sinDesc, conDesc)
    Definir mensaje Como Caracter;
    mensaje = "Tipo: " + tipo + " | Unidades: " + ConvertirATexto(cant) + " | Costo sin descuento: " + ConvertirATexto(sinDesc) + " | Costo con descuento: " + ConvertirATexto(conDesc);
FinFuncion
Funcion mostrar_mensaje(mensaje)
    Escribir mensaje
FinFuncion
Algoritmo compra_tienda
    Definir tipo Como Caracter;
    Definir cant Como Entero;
    Definir precio, sinDesc, conDesc, descuento Como Real;
    Repetir
        Escribir "Ingrese el tipo de producto (A = alimentos, V = vestimenta, E = electronicos):";
        Leer tipo;
        tipo = Mayusculas(tipo);
        Si tipo <> "A" Y tipo <> "V" Y tipo <> "E" Entonces
            Escribir "Error: tipo invalido. Use A, V o E.";
        FinSi
    Hasta Que tipo = "A" O tipo = "V" O tipo = "E"
    cant = tomar_cantidad();
    precio = obtener_precio(tipo);
    sinDesc = precio * cant;
    Segun tipo Hacer
        "A": descuento = sinDesc * 0.10;
        "V": descuento = sinDesc * 0.05;
        De Otro Modo: descuento = 0;
    FinSegun
    conDesc = sinDesc - descuento;
    mostrar_mensaje(crear_mensaje(tipo, cant, sinDesc, conDesc));
FinAlgoritmo

