Funcion titulo <- tomar_titulo
    Definir titulo Como Caracter;
    Escribir "digite el titulo del libro:";
    Leer titulo;
FinFuncion
Funcion autor <- tomar_autor
    Definir autor Como Caracter;
    Escribir "digite el autor del libro:";
    Leer autor;
FinFuncion
Funcion paginas <- tomar_paginas
    Definir paginas Como Entero;
    Repetir
        Escribir "digite el numero de paginas:";
        Leer paginas;
        Si paginas <= 0 Entonces
            Escribir "Error: el numero de las paginas deben ser positivos.";
        FinSi
    Hasta Que paginas > 0
FinFuncion
Funcion linea <- crear_linea(titulo, autor, paginas)
    Definir linea Como Caracter;
    linea = "Titulo: " + titulo + " | Autor: " + autor + " | Paginas: " + ConvertirATexto(paginas);
FinFuncion
Funcion mostrar_mensaje(registro, total)
    Escribir "----- Lista de libros registrados -----";
    Escribir registro;
	Escribir "________________________________"
    Escribir "Total de libros registrados: ", total;
	Escribir "________________________________"
FinFuncion
Algoritmo registro_biblioteca
    Definir titulo, autor, registro, linea Como Caracter;
    Definir paginas, total Como Entero;
    Definir respuesta Como Caracter;
    registro = "";
    total = 0;
    respuesta = "si";
    Mientras respuesta = "si" Hacer
        titulo = tomar_titulo();
        autor = tomar_autor();
        paginas = tomar_paginas();
		
        linea = crear_linea(titulo, autor, paginas);
        registro = registro + linea + " / ";
        total = total + 1;
		
        Escribir "Desea digitar otro libro? (si/no):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(registro, total);
FinAlgoritmo

