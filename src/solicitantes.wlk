import profesionales.*
import universidad.*

class Persona{
	var provincia
	method setProvincia(prov) { provincia = prov }
	method provincia() { return provincia }
	method puedeSerAtendidoPor(prof) { 
		return prof.provinciasDondePuedeTrabajar().any({provincia1 => provincia1 == self.provincia() })
	}
}

class Institucion {
	var universidadesReconocidas = []
	method agregarUniversidad(universidad) { universidadesReconocidas.add(universidad) }
	method puedeSerAtendidoPor(prof) { 
		return universidadesReconocidas.any({ universidad => universidad == prof.universidad()}) 
	}
	
}
