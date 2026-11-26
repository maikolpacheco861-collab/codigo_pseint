// Zona de Funciones
Funcion nombre <- tomar_nombre
	definir nombre Como Caracter;
	Escribir " Ingrese su nombre";
	Leer nombre;
FinFuncion
Funcion Apellido <- Tomar_Apellido
    Definir apellido Como Caracter;
    Escribir "Ingrese su apellido";
    Leer Apellido;
FinFuncion
Funcion mensaje <- crear_Mensaje(nombre,apellido)
    Definir mensaje Como Caracter;
    mensaje = "Hola bienvenido " + nombre + " " + apellido;
FinFuncion
Funcion mostrar_mensaje(mensaje)
	Escribir mensaje
FinFuncion
Algoritmo saludo_Usuario
    nom_cliente=tomar_nombre()
    apell_cliente=Tomar_Apellido()
    info_mensaje=crear_mensaje(nom_cliente,apell_cliente)
    mostrar_mensaje(info_mensaje)
FinAlgoritmo
