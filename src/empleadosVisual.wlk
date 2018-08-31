object gimenez {
	
	var sueldo = 15000
	method image() {return "gimenez.JPG"}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
}

object baigorria {
	var empanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method image() { return "baigorria.jpg"}
	method venderEmpanada() {
		empanadasVendidas  =  empanadasVendidas  + 1
	}
 	
	method sueldo() {
		return empanadasVendidas * montoPorEmpanada 
	}
}

object galvan {
	var dinero = 300000
	
	method image() { return "galvan.JPG"}
		
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero = dinero - empleado.sueldo()
	}
}
