// esta clase está completa, no necesita nada más . LISTO
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrar(cant) { asociacionDeProfesionales.recaudar(cant) }
}
object asociacionDeProfesionales { 
	var totalRecaudado
	method recaudar(cant) { 
		totalRecaudado = totalRecaudado + cant
	}
	method totalRecaudado() { return totalRecaudado }
}



// a esta clase le faltan métodos . LISTO
class ProfesionalVinculado {
	var universidad
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return universidad.provincia().asSet() }
	method honorariosPorHora() { return universidad.honorarioRecomendado() }
	method cobrar(cant) { universidad.recibirDonacion(cant/2) }
}


// a esta clase le faltan atributos y métodos . LISTO
class ProfesionalLibre {
	var universidad
	var provincias = #{}
	var honorarios
	var recaudado
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	
	method agregarProvincias(prov) { provincias.add(prov) }
	method provinciasDondePuedeTrabajar() { return provincias }
	
	method setHonorarios(honorario) { honorarios = honorario }
	method honorariosPorHora() { return honorarios }
	
	method cobrar(cant) { recaudado = recaudado + cant }
	method recaudado() { return recaudado }
	method pasarDinero(persona,cant) { 
		persona.cobrar(cant)
		recaudado=recaudado-cant
	}
}







