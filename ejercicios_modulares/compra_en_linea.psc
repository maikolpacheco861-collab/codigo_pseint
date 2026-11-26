Funcion precio <- tomar_precio
    Definir precio Como Real;
    Repetir
        Escribir "digite el precio el precio del producto:";
        Leer precio;
        Si precio <= 0 Entonces
            Escribir "Error: el precio debe de ser un valor positivo.";
        FinSi
    Hasta Que precio > 0
FinFuncion
Funcion cant <- tomar_cantidad
    Definir cant Como Entero;
    Repetir
        Escribir "digite la cantidad que desea comprar:";
        Leer cant;
        Si cant <= 0 Entonces
            Escribir "Error: la cantidad debe de ser un numero positivo.";
        FinSi
    Hasta Que cant > 0
FinFuncion
Funcion mostrar_mensaje(total, items)
    Escribir "===== Resumen de la compra =====";
    Escribir "Productos agregados: ", items;
	Escribir "________________________________"
    Escribir "Costo total: ", total;
	Escribir "________________________________"
FinFuncion
Algoritmo compra_en_linea
    Definir precio, total Como Real;
    Definir cant, items Como Entero;
    Definir respuesta Como Caracter;
    total = 0;
    items = 0;
    respuesta = "si";
    Mientras respuesta = "si" Hacer
        precio = tomar_precio();
        cant = tomar_cantidad();
        total = total + (precio * cant);
        items = items + 1;
        Escribir "Costo : ", total;
		
        Escribir "Desea agregar otro producto? (si/no):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(total, items);
FinAlgoritmo

