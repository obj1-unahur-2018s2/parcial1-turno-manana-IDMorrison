class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrar(cant) { asociacionDeProfesionales.recaudar(cant) }
}
object asociacionDeProfesionales { 
	var totalRecaudado = 0
	method recaudar(cant) { 
		totalRecaudado = totalRecaudado + cant
	}
	method totalRecaudado() { return totalRecaudado }
}


class ProfesionalVinculado {
	var universidad
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	method honorariosPorHora() { return universidad.honorarioRecomendado() }
	method cobrar(cant) { universidad.recibirDonacion(cant/2) }
}


class ProfesionalLibre {
	var universidad
	var provincias = #{}
	var honorarios
	var recaudado = 0 
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







