Funcion nombre <- tomar_nombre
    Definir nombre Como Caracter;
    Escribir "Ingrese el nombre del contacto:";
    Leer nombre;
FinFuncion
Funcion telefono <- tomar_telefono
    Definir telefono Como Caracter;
    Escribir "Ingrese el numero de telefono:";
    Leer telefono;
FinFuncion
Funcion linea <- crear_linea(nombre, telefono)
    Definir linea Como Caracter;
    linea = nombre + " - " + telefono;
FinFuncion
Funcion mostrar_mensaje(agenda, total)
    Escribir "----- Lista de contactos -----";
    Escribir agenda;
    Escribir "Contactos registrados: ", total;
FinFuncion
Algoritmo agenda_contactos
    Definir nombre, telefono, agenda, linea, respuesta Como Caracter;
    Definir total Como Entero;
    agenda = "";
    total = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        nombre = tomar_nombre();
        telefono = tomar_telefono();
        linea = crear_linea(nombre, telefono);
        agenda = agenda + linea + " / ";
        total = total + 1;
        Escribir "Desea agregar otro contacto? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(agenda, total);
FinAlgoritmo
