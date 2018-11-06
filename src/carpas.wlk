
import marcas.*

class CarpaCervecera {
	
	const property capacidad
	const property tiposJarras = []
	const property tieneBanda
	const property marcaCerveza
	var property clientes = []
	
	method ingresar(persona){
		clientes.add(persona)
	}
	
	method cantClientes(){
		return clientes.size()
	}
	
	method permiteIngreso(persona){
		return self.hayLugar() and not persona.estaEbria()
	}
	
	method hayLugar(){
		return capacidad > self.cantClientes()
	}
	
}


class Jarra {
	
	const property capacidad
	const property marcaCerveza
	
	method contenidoAlcoholico() {
		return capacidad * marcaCerveza.graduacion()
	}	
	
}