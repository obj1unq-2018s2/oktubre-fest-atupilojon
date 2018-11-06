
import carpas.*

class Persona {
	
	const property peso
	var property jarrasBebidas = []
	const property aguante
	const property gustaBanda
	const property marcaPreferida
	
	method estaEbria() {
		return self.alcoholIngerido() * peso > aguante
	}
	
	method alcoholIngerido() {
		return jarrasBebidas.sum(
			{ jarra => jarra.contenidoAlcoholico() }
		)
	}
	
	method beberJarra(jarra) {
		jarrasBebidas.add(jarra)
	}
	
	method leGustariaEntrar(carpa){
		return self.vendeCervezaRica(carpa) and self.evaluacionAmbiente(carpa)
	}
	
	method vendeCervezaRica(carpa){
		return marcaPreferida == carpa.marcaCerveza()
	}
	
	method evaluacionAmbiente(carpa){
		return gustaBanda == carpa.tieneBanda()
	}
	
	method ingresar(carpa){
		if (self.leGustariaEntrar(carpa) and carpa.permiteIngreso(self)){
			carpa.ingresar(self)
		}
		else {
			throw new Exception("No puede entrar")
		}
	}
	
}

class Belga inherits Persona {
	
	
	
}

class Checo inherits Persona {
	
	
	
}

class Aleman inherits Persona {
	
	override method evaluacionAmbiente(carpa){
		return super(carpa) and carpa.cantClientes().even()
	}
	
	
}