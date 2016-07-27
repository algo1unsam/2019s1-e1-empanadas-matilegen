object gimenez {
	var sueldo = 15000
	
	method sueldo() = sueldo
	
	method sueldo(_sueldo) { sueldo = _sueldo }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
}
