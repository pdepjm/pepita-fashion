object naranja {
	method nombre() = "naranja"	
	method esPrimario() = false	
}

object magenta {
	method nombre() = "magenta"	
	method esPrimario() = false
}

object verde {
	method nombre() = "verde"
	method esPrimario() = false
}

object rojo {
	method nombre() = "rojo"
	method esPrimario() = true
	/* es lo mismo que:
	method esPrimario() {
	  return true
	}
*/
}

object azul {
	method nombre() = "azul"
	method esPrimario() = true
}

object amarillo {
	method nombre() = "amarillo"
	method esPrimario() = true
}

object paleta {
	const colores = [azul,rojo,naranja,amarillo,verde,magenta]
	
	method colorAlAzar(){
		return colores.anyOne()
	}
	
	
	// aca hay mucho codigo repetido :( DESAFIO?
	method colorPrimarioAlAzar(){
		return colores.filter({color => color.esPrimario()}).anyOne()
	}
	
	method colorSecundarioAlAzar(){
		return colores.filter({color => not color.esPrimario()}).anyOne()
	}
}


