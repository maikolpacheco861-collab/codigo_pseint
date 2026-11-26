Funcion opcion <- tomar_opcions
    Definir opcions Como Caracter;
    Repetir
        Escribir "============ Menu ============";
		Escribir "________________________________"
        Escribir "1. Hamburguesa - 20000";
		Escribir "________________________________"
        Escribir "2. Perro caliente - 15000";
		Escribir "________________________________"
        Escribir "3. Papas fritas - 5000";
		Escribir "________________________________"
        Escribir "4. Pizza personal - 28000";
		Escribir "________________________________"
        Escribir "digite el numero de su opcion:";
		Escribir "________________________________"
        Leer opcions;
		Escribir "________________________________"
        Si opcions <> "1" Y opcions <> "2" Y opcions <> "3" Y opcions <> "4" Entonces
            Escribir "Error: opcion invalida.";
        FinSi
    Hasta Que opcions = "1" O opcions = "2" O opcions = "3" O opcions = "4"
FinFuncion
Funcion precio <- obtener_precio(opcions)
    Definir precio Como Real;
    Segun opcion Hacer
        "1": precio = 20000;
        "2": precio = 15000;
        "3": precio = 5000;
        "4": precio = 28000;
        De Otro Modo: precio = 0;
    FinSegun
FinFuncion
Funcion cant <- tomar_cantidad
    Definir cant Como Entero;
    Repetir
        Escribir "digite la cantidad:";
        Leer cant;
        Si cant <= 0 Entonces
            Escribir "Error: la cantidad debe ser positiva.";
        FinSi
    Hasta Que cant > 0
FinFuncion
Funcion mostrar_mensaje(total, items)
    Escribir "----- Resumen del pedido -----";
	Escribir "________________________________"
    Escribir "Items pedidos: ", items;
	Escribir "________________________________"
    Escribir "Costo total: ", total;
	Escribir "________________________________"
    Escribir "Gracias por confiar en nosotros!";
	Escribir "________________________________"
FinFuncion
Algoritmo menu_comidas_rapidas
    Definir opcions, respuesta Como Caracter;
    Definir precio, total Como Real;
    Definir cant, items Como Entero;
    total = 0;
    items = 0;
    respuesta = "si";
    Mientras respuesta = "si" Hacer
        opcions = tomar_opcions();
        cant = tomar_cantidad();
        precio = obtener_precio(opcion);
        total = total + (precio * cant);
        items = items + cant;
        Escribir "Costo parcial: ", total;
        Escribir "Desea pedir algo mas? (si/no):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(total, items);
FinAlgoritmo