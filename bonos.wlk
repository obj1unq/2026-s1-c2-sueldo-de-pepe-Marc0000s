// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado) { 
		return empleado.sueldoNeto() * 10 / 100 
	}
}
object bonoPorMontoFijo{
	method monto(empleado) { 
		return 100
	}
}
// agregar bonos por presentismo  
object bonoPresentismoNormal {
	const bonoPorPresentismoCompleto = 2000
	const bonoPorPresentismoParcial = 1000 
	method monto(empleado) {
		return if (empleado.cantidadDeFaltas() == 0) { 
			return bonoPorPresentismoCompleto
		}
		else if(empleado.cantidadDeFaltas() == 1) { 
			return bonoPorPresentismoParcial
		}
		else { return 0 }
	} 
}
// agregar bonos ajuste y demagogico
object bonoPorAjuste { 
	method monto(empleado) { 
		if (empleado.cantidadDeFaltas() == 0) { 
			return 0 
		}
		else { return 0 }
	}
}
object bonoDemagogico { 
	var bonoPorSueldoNetoMenor = 500
	var bonoPorSueldoNetoMayor = 300
	var netoAComparar = 18000
	
	method monto(empleado) { 
		if(empleado.sueldoNeto() > netoAComparar) { 
			return bonoPorSueldoNetoMenor
		}
		else(empleado.sueldoNeto() < netoAComparar) { 
			return bonoPorSueldoNetoMayor 
		}
	}
  
}
object bonoNulo {
	method monto(empleado) { return 0 } 
}

