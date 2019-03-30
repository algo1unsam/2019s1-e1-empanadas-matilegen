object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda=0
	var dinero=0
	method dinero(cant){
		dinero=cant
	}
	method deudar(cant){
		deuda=cant
	}
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(){
		dinero+=15000
		
		deudas.calcular(self,deuda)
		
		}
	method gastar(cuanto){
		gasto.calcular(self,cuanto)
		
	}
	method totalDeuda(){return deuda}
	method totalDinero(){return dinero}

}//¿qué mensajes entiende cada uno?
//gimenez entiende los metodos: dinero, deudar,sueldo,sueldo(con parametro),cobrarSueldo,gastar,totalDeuda,totalDinero
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
object deudas{
	method calcular(persona,deuda){
		var dinero=persona.totalDinero()
		var deud=persona.totalDeuda()
		if(dinero==deuda or dinero>deuda){
			dinero-=deuda
			deud=0
			persona.dinero(dinero)
			persona.deudar(deud)
		}else{
			deud-=dinero
			dinero=0
			persona.dinero(dinero)
			persona.deudar(deud)
		}
	}
	}
object gasto{
	method calcular(persona,cuanto){
		var acum
		var dinero=persona.totalDinero()
		var deuda=persona.totalDeuda()
	if(dinero>0 and (dinero>cuanto or dinero==cuanto)){
		dinero-=cuanto
		persona.dinero(dinero)
		persona.deudar(deuda)
	}	else if(dinero<cuanto){
		acum=cuanto-dinero
		dinero=0
		deuda+=acum
		persona.dinero(dinero)
		persona.deudar(deuda)
	}
	else{
		deuda+=cuanto
		persona.dinero(dinero)
		persona.deudar(deuda)
	}
	}
}