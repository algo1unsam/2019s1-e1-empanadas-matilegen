object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda=0
	var dinero=0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		dinero+=15000
		dinero-=deuda
	}
	method gastar(cuanto){
	if(dinero>0 and (dinero>cuanto or dinero==cuanto)){
		dinero-=cuanto
	}	else{
		deuda+=cuanto
	}
	
	}
	method totalDeuda(){return deuda}
	method totalDinero(){return dinero}
}

object baigorria {
	var totalCobrado=0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo(){totalCobrado+=self.sueldo()}
	method totalCobrado(){return totalCobrado}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
		empleado.pagarCobrar() //se rompe porque no estan los metodos unidos por polimorfismo. en este caso ninguno tiene el metodo cobrarSueldo()
	}
}
