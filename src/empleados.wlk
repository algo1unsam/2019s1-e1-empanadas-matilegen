object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	var empanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		empanadasVendidas  =  empanadasVendidas  + 1
	}
 	
	method sueldo() {
		return empanadasVendidas * montoPorEmpanada 
	}
}

object galvan {
	var dinero = 300000
	var imagen = "galvan.JPG"
	var posicion = new Position(1,1) 
	
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero = dinero - empleado.sueldo()
	}
}
