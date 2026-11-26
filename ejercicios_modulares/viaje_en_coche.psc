Funcion distancia <- tomar_distancia
    Definir distancia Como Real;
    Repetir
        Escribir "digite la distancia total del viaje (km):";
        Leer distancia;
        Si distancia <= 0 Entonces
            Escribir "Error: la distancia debe ser positiva.";
        FinSi
    Hasta Que distancia > 0
FinFuncion
Funcion velocidad <- tomar_velocidad
    Definir velocidad Como Real;
    Repetir
        Escribir "digite la velocidad promedio (km/h):";
        Leer velocidad;
        Si velocidad <= 0 Entonces
            Escribir "Error: la velocidad debe ser positivo.";
        FinSi
    Hasta Que velocidad > 0
FinFuncion
Funcion mostrar_mensaje(distancia, velocidad, tiempo)
    Escribir "----- Resultado del viaje -----";
    Escribir "Distancia: ", distancia, " km";
	Escribir "________________________________"
    Escribir "Velocidad promedio: ", velocidad, " km/h";
	Escribir "________________________________"
    Escribir "Tiempo estimado: ", tiempo, " horas";
	Escribir "________________________________"
FinFuncion
Algoritmo viaje_en_coche
    Definir distancia, velocidad, tiempo Como Real;
    Definir respuesta Como Caracter;	
    respuesta = "si";
    Mientras respuesta = "si" Hacer
        distancia = tomar_distancia();
        velocidad = tomar_velocidad();
        tiempo = distancia / velocidad;
        mostrar_mensaje(distancia, velocidad, tiempo);
		
        Escribir "Desea hacer otro viaje? (si/no):";
        Leer respuesta;
        respuesta = Minusculas(respuesta);
    FinMientras
FinAlgoritmo
