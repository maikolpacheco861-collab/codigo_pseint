Funcion mostrar_mensaje(articulo)
	Escribir articulo
FinFuncion
Funcion articulo <- mostrar_articulo(precio)
	Definir articulo Como Caracter
	articulo="el precio del articulo es " + ConvertirATexto(precio) + " precio"
FinFuncion
Funcion precio <- mostrar_precio
	Definir precio Como Real
	precio <- 56700
	Escribir "jean acampando", precio
FinFuncion
Algoritmo pesoArticulo
	Definir val Como Entero
	Definir infomensaje Como Caracter
	val <- mostrar_precio
	infomensaje <- mostrar_articulo(val)
	mostrar_mensaje(infomensaje)
FinAlgoritmo

