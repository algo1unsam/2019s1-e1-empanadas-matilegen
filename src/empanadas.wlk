import empleadosVisual.*
import wollok.game.*

object empanadas {
	
	method iniciar(){
		game.height(10)
		game.width(10)

		game.addVisualCharacterIn(galvan, game.at(1,1) )
		game.addVisualIn(gimenez, game.at(3,3) )
		game.addVisualIn(baigorria, game.at(5,5) )
		
		keyboard.a().onPressDo({
			game.addVisualIn(gimenez, self.posicionAleatoria())
		})
		game.whenCollideDo(galvan, {personaje=>galvan.pagarA(personaje) self.reubicar(personaje)})
 
		game.start()
		
	}
	method reubicar(personaje){
		game.removeVisual(personaje)
		game.addVisualIn(personaje, self.posicionAleatoria())
	}
	method posicionAleatoria() {
		return game.at(1.randomUpTo(10), 1.randomUpTo(10))
	}


}
