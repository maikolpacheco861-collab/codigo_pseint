Funcion edad <- tomar_edad
    Definir edad Como Entero;
    Repetir
        Escribir "Digite su edad:";
        Leer edad;
        Si edad < 0 Entonces
            Escribir "Error: la edad, no puede ser negativa.";
        FinSi
    Hasta Que edad >= 0
FinFuncion
Funcion recomendacion <- recomendar_pelicula(edad)
    Definir recomendacion Como Caracter;
    Si edad < 7 Entonces
        recomendacion = "Animadas para todas las edades.";
    SiNo
        Si edad <= 17 Entonces
            recomendacion = "Animaciones, aventuras y comedias familiares(+13).";
        SiNo
            Si edad <= 30 Entonces
                recomendacion = "Accion, drama, comedia y ciencia ficcion(+13).";
            SiNo
                recomendacion = "Peliculas clasicas y dramas.";
            FinSi
        FinSi
    FinSi
FinFuncion
Funcion mensaje <- crear_mensaje(edad, recomendacion)
    Definir mensaje Como Caracter;
    mensaje = "Edad: " + ConvertirATexto(edad) + " | Le recomendamos: " + recomendacion;
FinFuncion
Funcion mostrar_mensaje(mensaje)
    Escribir mensaje
FinFuncion
Algoritmo asistente_cine
    Definir edad Como Entero;
    Definir recomendacion Como Caracter;
    edad = tomar_edad();
    recomendacion = recomendar_pelicula(edad);
    mostrar_mensaje(crear_mensaje(edad, recomendacion));
FinAlgoritmo

