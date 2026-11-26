Funcion descripcion <- tomar_descripcion
    Definir descripcion Como Caracter;
    Escribir "Ingrese la descripcion de la tarea:";
    Leer descripcion;
FinFuncion
Funcion fecha <- tomar_fecha
    Definir fecha Como Caracter;
    Escribir "Ingrese la fecha de vencimiento (dd/mm/aaaa):";
    Leer fecha;
FinFuncion
Funcion linea <- crear_linea(descripcion, fecha)
    Definir linea Como Caracter;
    linea = "Tarea: " + descripcion + " | Vence: " + fecha;
FinFuncion
Funcion mostrar_mensaje(lista, total)
    Escribir "----- Lista de tareas -----";
    Escribir lista;
    Escribir "Total de tareas: ", total;
FinFuncion
Algoritmo gestion_tareas
    Definir descripcion, fecha, lista, linea Como Caracter;
    Definir total Como Entero;
    Definir respuesta Como Caracter;
    lista = "";
    total = 0;
    respuesta = "s";
    Mientras respuesta = "s" Hacer
        descripcion = tomar_descripcion();
        fecha = tomar_fecha();
        linea = crear_linea(descripcion, fecha);
        lista = lista + linea + " / ";
        total = total + 1;
		
        Escribir "Desea agregar otra tarea? (s/n):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
    mostrar_mensaje(lista, total);
FinAlgoritmo

