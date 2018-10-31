
import carpas.*

class Persona {
	
	const property peso
	var property jarrasBebidas
	const property aguante
	const property gustaBanda
	
	method estaEbria() {
		return self.alcoholIngerido() * peso > aguante
	}
	
	method alcoholIngerido() {
		return jarrasBebidas.sum(
			{ jarra => jarra.contenidoAlcoholico() }
		)
	}
	
}

class Belga inherits Persona {
	
	
	
}