
class CervezaRubia {
	
	const property graduacion
	const property gramosLupuloPorLitro
	const property paisProcedencia
}

class CervezaNegra {
	
	const property gramosLupuloPorLitro
	const property paisProcedencia
	
	method graduacion() {
		return graduacionReglamentaria.valorMaximoCervezaNegra()
			.min(gramosLupuloPorLitro * 2)
	}
}

class CervezaRoja inherits CervezaNegra {
	
	override method graduacion() {
		return super() * 1.25
	}
	
}

object graduacionReglamentaria {
	
	var property valorMaximoCervezaNegra
	
}