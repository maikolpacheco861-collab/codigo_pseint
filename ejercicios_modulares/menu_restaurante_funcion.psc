Funcion plato <- tomar_plato
    Definir plato Como Caracter;
    Repetir
		Escribir "Seleccione un plato:";
		Escribir "========================"
        Escribir "1. Bandeja paisa $35000";
		Escribir "========================"
        Escribir "2. Ajiaco  $15000";
		Escribir "========================"
        Escribir "3. Hamburguesa  $20000";
		escribir "========================"
        Leer plato;
        Si plato <> "1" Y plato <> "2" Y plato <> "3" Entonces
            Escribir "Error: opcion invalida.";
        FinSi
	Hasta Que plato = "1" O plato = "2" O plato = "3"
FinFuncion
Funcion bebida <- tomar bebida 
	definir bebida Como Caracter
	repetir 
		escribir "seleccione la bebida:";
		Escribir "========================"
        Escribir "1. Gaseosa $8000";
		Escribir "========================"
        Escribir "2. Jugo natural  $8000";
		Escribir "========================"
        Escribir "3. Agua  $2000";
		Escribir "========================"
        Leer bebida;
        Si bebida <> "1" Y bebida <> "2" Y bebida <> "3" Entonces
            Escribir "Error: opcion invalida.";
        FinSi
    Hasta Que bebida = "1" O bebida = "2" O bebida = "3"
FinFuncion
Funcion precio <- precio_plato(opcion)
    Definir precio Como Real;
    Segun opcion Hacer
        "1": precio = 35000;
        "2": precio = 15000;
        "3": precio = 20000;
        De Otro Modo: precio = 0;
    FinSegun
FinFuncion
Funcion precio <- precio_bebida(opcion)
    Definir precio Como Real;
    Segun opcion Hacer
        "1": precio = 8000;
        "2": precio = 8000;
        "3": precio = 2000;
        De Otro Modo: precio = 0;
    FinSegun
FinFuncion
Funcion pago <- tomar_pago
    Definir pago Como Caracter;
    Repetir
        Escribir "Modo de pago (efectivo, tarjeta, cheque):";
        Leer pago;
        pago = Minusculas(pago);
        Si pago <> "efectivo" Y pago <> "tarjeta" Y pago <> "cheque" Entonces
            Escribir "Error: metodo invalido.";
        FinSi
    Hasta Que pago = "efectivo" O pago = "tarjeta" O pago = "cheque"
FinFuncion
funcion descuento <- porcentaje_descuento(pago)
Definir descuento Como Real;
Segun pago Hacer
	"efectivo": descuento = 0.10;
	"tarjeta":  descuento = 0.05;
	De Otro Modo: descuento = 0;
FinSegun
Funcion mostrar_mensaje(subtotal, desc, total)
    Escribir "----- Resumen de la cuenta -----";
    Escribir "Subtotal: ", subtotal;
    Escribir "Descuento aplicado: ", desc * 100, "%";
    Escribir "Total a pagar: ", total;
FinFuncion
Algoritmo menu_restaurante
    Definir opPlato, opBebida, pago Como Caracter;
    Definir subtotal, total, desc Como Real;
    subtotal = 0;
    opPlato = tomar_plato();
    subtotal = subtotal + precio_plato(opPlato);
    opBebida = tomar_bebida();
    subtotal = subtotal + precio_bebida(opBebida);
    pago = tomar_pago();
    desc = porcentaje_descuento(pago);
    total = subtotal - (subtotal * desc);
    mostrar_mensaje(subtotal, desc, total);
FinAlgoritmo
