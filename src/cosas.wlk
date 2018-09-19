object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteLadrillos{
	
	 var pesoLadrillo = 2
	 var cantidadLadrillo=0
	
    method nivelPeligrosidad(){return 2}
    
    
    method cantidad(){return cantidadLadrillo}
    method setcantidad(cantidad){cantidadLadrillo=cantidad}
    
    method peso() { return pesoLadrillo*cantidadLadrillo }
    method setpeso(peso){pesoLadrillo=peso}
}

object arenaGranel{
	var _peso
	
	method nivelPeligrosidad(){return 1}
	
	method peso(){return _peso}
	method setpeso(peso){_peso=peso}
}

object bateriaAntiAerea{
	var conMisiles =true
	
	method peso(){return if (conMisiles){300}else{200}}
    
    method sinMisiles(){conMisiles=not conMisiles }
    
    method nivelPeligrosidad(){return if(conMisiles){100}else{0}}
    
	}
	
object contenedor{
	
	const property cosasContenedor = []
	
	method peso(){return 100+ cosasContenedor.sum({unaCosa=>unaCosa.peso()})}
	
	method nivelPeligrosidad(){
	return if (cosasContenedor.isEmpety()){0 }
	else{
	
	{return cosasContenedor.max({unaCosa=>unaCosa.nivelPeligrosidad()}).nivelPeligrosidad() }
  }

 }
}


object residuosRadioactivos{
	
	var _peso
	
	method nivelPeligrosidad(){return 200}
	
    method peso(){return _peso}
	method setpeso(peso){_peso=peso}
}
	
object embalaje{
	 var queCosa=null
	 
	 method embalar(unaCosa){queCosa=unaCosa}
	 
	 method peso(){return queCosa.peso()}
	 method nivelPeligrosidad(){return queCosa.nivelPeligrosidad()/2}
}
	
	

	
	

