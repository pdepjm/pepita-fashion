import wollok.game.*
import colores.*

object pepita {
	var color = rojo
	var posicion = game.at(2,2)

	method image() {
		return "pepita_" + color.nombre() + ".png"
	} 
	
	method deciTuColor() {
		game.say(self, color.nombre()) 
	}
	
	method cambiarColor(unColor){
		color = unColor
	}
	
	method position() {
		return posicion
	} 
	
	method posicion(unaPosicion) {
		posicion = unaPosicion
	}
}

object manolo {	
	
	method image() {
		return "manolo_" + self.color().nombre() + ".png"
	}
	
	method color() {
		if(self.position().x().even()) {
			return naranja
		} else {
			return magenta
		}
	}
	
	method position() {
		return pepita.position().right(1)
	} 
}