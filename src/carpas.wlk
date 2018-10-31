
import marcas.*

class CarpaCervecera {
	
	const property capacidad
	const property tiposJarras
	const property tieneBanda
	const property marcaCerveza
	
}


class Jarra {
	
	const property capacidad
	const property marcaCerveza
	
	method contenidoAlcoholico() {
		return capacidad * marcaCerveza.graduacion()
	}	
	
}