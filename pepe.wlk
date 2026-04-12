import categorias.*
import bonos.*

object pepe {
	var categoria = null
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { 
		return cantidadDeFaltas 
	}
	method cantidadDeFaltas(_cantidadDeFaltas) {
		cantidadDeFaltas = _cantidadDeFaltas
	}
	method neto() { 
		return categoria.neto()
	}
	
	method categoria(_categoria) {
		return categoria = _categoria
	} 

	//BONOS 
	method bonoPresentismo() { 
		return bonoPresentismo
	}
	method bonoPresentismo(_bonoPresentismo) { 
		bonoPresentismo = _bonoPresentismo 
	}
	method bonoResultado() { 
		return bonoResultado
	}
	method bonoResultado(_bonoResultado) { 
		bonoResultado = _bonoResultado 
	}


	method sueldoNeto() { return categoria.neto() }
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.valor(self) + self.valorPorResultado()
	}
	
}
