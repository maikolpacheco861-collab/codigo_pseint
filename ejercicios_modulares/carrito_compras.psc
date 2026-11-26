Funcion producto <- tomar_producto
    Definir producto Como Caracter;
    Escribir "Ingrese el nombre del producto:";
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
Funcion linea <- crear_linea(producto, precio)
    Definir linea Como Caracter;
    linea = producto + " = " + ConvertirATexto(precio);
FinFuncion
Funcion mostrar_mensaje(resumen, total, items)
    Escribir "----- Productos agregados al carrito -----";
    Escribir resumen;
    Escribir "Productos en el carrito: ", items;
    Escribir "Total de la compra: ", total;
FinFuncion
Algoritmo carrito_compras
    Definir producto, resumen, linea, respuesta Como Caracter;
    Definir precio, total Como Real;
    Definir items Como Entero;
    resumen = "";
    total = 0;
    items = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        producto = tomar_producto();
        precio = tomar_precio();
        total = total + precio;
        items = items + 1;
        linea = crear_linea(producto, precio);
        resumen = resumen + linea + " / ";
        Escribir "Desea agregar otro producto al carrito? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(resumen, total, items);
FinAlgoritmo
