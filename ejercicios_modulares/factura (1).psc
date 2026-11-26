Funcion nombre <- ingresar_nombre
    Escribir "Ingrese el nombre del cliente:"
    Leer nombre
FinFuncion
Funcion producto <- ingresar_producto
    Escribir "Ingrese el nombre del producto:"
    Leer producto
FinFuncion
Funcion cantidad <- ingresar_cantidad
    Escribir "Ingrese la cantidad de productos:"
    Leer cantidad
FinFuncion
Funcion precio <- ingresar_precio
    Escribir "Ingrese el precio unitario:"
    Leer precio
FinFuncion
Funcion estudiante <- ingresar_estudiante
    Escribir "¿Es estudiante? (Verdadero/Falso):"
    Leer estudiante
FinFuncion
Funcion letra <- ingresar_tipo
    Escribir "Ingrese el tipo de cliente (A, B, C):"
    Leer letra
FinFuncion
Funcion subtotal <- calcular_subtotal(cantidad, precio)
    subtotal <- cantidad*precio
FinFuncion
Funcion impuesto <- calcular_impuesto(subtotal, estudiante)
    Si estudiante = Verdadero Entonces
        impuesto <- subtotal*0.05
    SiNo
        impuesto <- subtotal*0.13
    FinSi
FinFuncion
Funcion total <- calcular_total(subtotal, impuesto)
    total <- subtotal+impuesto
FinFuncion
Funcion mostrar_factura(nombre, producto, cantidad, precio, estudiante, letra, subtotal, impuesto, total)
    Escribir " FACTURA DE COMPRA "
    Escribir "Cliente: ", nombre
    Escribir "Producto: ", producto
    Escribir "Cantidad: ", cantidad
    Escribir "Precio unitario: $", precio
    Escribir "¿Es estudiante?: ", estudiante
    Escribir "Tipo de cliente: ", letra
    Escribir "Subtotal: $", subtotal
    Escribir "Impuesto: $", impuesto
    Escribir "TOTAL A PAGAR: $", total
FinFuncion
Algoritmo Factura_Compra
    Definir nombre, producto Como Cadena
    Definir cantidad Como Entero
    Definir precio, subtotal, impuesto, total Como Real
    Definir estudiante Como Logico
    Definir letra Como Caracter
    nombre <- ingresar_nombre()
    producto <- ingresar_producto()
    cantidad <- ingresar_cantidad()
    precio <- ingresar_precio()
    estudiante <- ingresar_estudiante()
    letra <- ingresar_tipo()
    subtotal <- calcular_subtotal(cantidad, precio)
    impuesto <- calcular_impuesto(subtotal, estudiante)
    total <- calcular_total(subtotal, impuesto)
    mostrar_factura(nombre, producto, cantidad, precio, estudiante, letra, subtotal, impuesto, total)
FinAlgoritmo