class Universidad{
	var honorario
	var provincia
	var donaciones = 0
	method setProvincia(_provincia) { provincia=_provincia }
	method provincia() { return provincia }
	method setHonorarioRecomendado(hono) { honorario=hono }
	method honorarioRecomendado() { return honorario }
	method recibirDonacion(cant) { donaciones = donaciones + cant }
	method donaciones() { return donaciones }
}

class Empresa{
	var empleados = []
	var honorario
	
	method setHonorarioDeReferencia(refer) { honorario=refer }
	method honorarioReferencia() { return honorario }
	
	method agregarEmpleado(empleado) { empleados.add(empleado) } 
	method profesionalesCaros() { 
		return empleados.filter({ empleado => empleado.honorariosPorHora() > self.honorarioReferencia() })
	}
	method universidadesFormadoras() { 
		return empleados.map({ empleado => empleado.universidad() }).asSet()
	}
	method profesionalMasBarato() { 
		return empleados.min({ empleado => empleado.honorariosPorHora() })
	}

	method provinciasCubiertas(prov)  { 
		return empleados.any({ empleado => empleado.provinciasDondePuedeTrabajar().any({ provinc => provinc == prov })})
	}
	method cuantosEstudiaronEn(univ) { 
		return empleados.count({ empleado => empleado.universidad()==univ })
	}
	
	//  Me salio el metodo DIFICIL!!
	method esPocoAtractivo(prof) {
		return prof.provinciasDondePuedeTrabajar().all({provincia => empleados.any(
			{ empleado => empleado.provinciasDondePuedeTrabajar().contains(provincia)}
		)})
	}
	method puedeSatisfacer(solicitante) { 
		return empleados.any({empleado => solicitante.puedeSerAtendidoPor(empleado)})
	}
}
