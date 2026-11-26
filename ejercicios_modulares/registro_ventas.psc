Funcion producto <- tomar_producto
    Definir producto Como Caracter;
    Escribir "Ingrese el nombre del producto vendido:";
    Leer producto;
FinFuncion
Funcion precio <- tomar_precio
    Definir precio Como Real;
    Repetir
        Escribir "Ingrese el precio del producto:";
        Leer precio;
        Si precio <= 0 Entonces
            Escribir "Error: el precio debe ser un valor positivo.";
        FinSi
    Hasta Que precio > 0
FinFuncion
Funcion cant <- tomar_cantidad
    Definir cant Como Entero;
    Repetir
        Escribir "Ingrese la cantidad vendida:";
        Leer cant;
        Si cant <= 0 Entonces
            Escribir "Error: la cantidad debe ser positiva.";
        FinSi
    Hasta Que cant > 0
FinFuncion
Funcion linea <- crear_linea(producto, cant, subtotal)
    Definir linea Como Caracter;
    linea = producto + " x" + ConvertirATexto(cant) + " = " + ConvertirATexto(subtotal);
FinFuncion
Funcion mostrar_mensaje(resumen, total, items)
    Escribir "----- Resumen de productos vendidos -----";
    Escribir resumen;
    Escribir "Ventas registradas: ", items;
    Escribir "Monto total de las ventas: ", total;
FinFuncion
Algoritmo registro_ventas
    Definir producto, resumen, linea, respuesta Como Caracter;
    Definir precio, subtotal, total Como Real;
    Definir cant, items Como Entero;
    resumen = "";
    total = 0;
    items = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        producto = tomar_producto();
        precio = tomar_precio();
        cant = tomar_cantidad();
        subtotal = precio * cant;
        total = total + subtotal;
        items = items + 1;
        linea = crear_linea(producto, cant, subtotal);
        resumen = resumen + linea + " / ";
        Escribir "Desea registrar otra venta? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(resumen, total, items);
FinAlgoritmo
