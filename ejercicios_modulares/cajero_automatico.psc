Funcion monto <- tomar_monto(saldo)
    Definir monto Como Real;
    Repetir
        Escribir "Saldo disponible: ", saldo;
        Escribir "digite el monto que desea retirar:";
        Leer monto;
        Si monto <= 0 Entonces
            Escribir "Error: el monto debe de ser un valor positivo.";
        SiNo
            Si monto > saldo Entonces
                Escribir "Error: el monto, excede el saldo disponible.";
            FinSi
        FinSi
    Hasta Que monto > 0 Y monto <= saldo
FinFuncion
Funcion mostrar_mensaje(saldo, monto, restante)
    Escribir "===== Retiro realizado =====";
    Escribir "Saldo anterior: ", saldo;
	escribir "____________________________"
    Escribir "Monto retirado: ", monto;
	Escribir "____________________________"
    Escribir "Saldo restante: ", restante;
	escribir "____________________________"
FinFuncion
Algoritmo cajero_automatico
    Definir saldo, monto, restante Como Real;
    saldo = 1000000;
    monto = tomar_monto(saldo);
    restante = saldo - monto;
    mostrar_mensaje(saldo, monto, restante);
FinAlgoritmo
