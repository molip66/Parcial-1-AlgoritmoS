Proceso calcular_descuento
    Definir monto, descuento, monto_total Como Real
    Definir porcentaje_descuento Como Real
	
    // Leer el monto de la compra
    Escribir "Ingrese el monto de la compra:"
    Leer monto
	
    // Determinar el porcentaje de descuento basado en el rango del monto
    Segun monto Hacer
        500 <= monto < 1000:
            porcentaje_descuento <- 5
        1000 <= monto < 7000:
            porcentaje_descuento <- 11
        7000 <= monto < 15000:
            porcentaje_descuento <- 18
        monto >= 15000:
            porcentaje_descuento <- 25
        De Otro Modo:
            porcentaje_descuento <- 0 // Para montos menores a 500
    Fin Segun
	
    // Calcular el monto del descuento
    descuento <- monto * porcentaje_descuento / 100
	
    // Calcular el monto total a pagar después del descuento
    monto_total <- monto - descuento
	
    // Mostrar resultados
    Escribir "El porcentaje de descuento aplicado es: ", porcentaje_descuento, "%"
    Escribir "El monto del descuento es: ", descuento
    Escribir "El monto total a pagar después del descuento es: ", monto_total
FinProceso
