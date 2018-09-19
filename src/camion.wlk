import cosas.*

object camion {
	const tara=1000
	const property cosas = []
	const pesoMaximo=2500
	
	method cargar(unaCosa) {cosas.add(unaCosa)}
   
    method descargar(unaCosa){cosas.remove(unaCosa)}
    
    method pesoTotal(){return tara +cosas.sum({unaCosa=>unaCosa.peso()})}
    
    method excedidoDePeso() {return self.pesoTotal()>pesoMaximo}


    method objetosPeligrosos(nivel){ return cosas.filter({unaCosa=>unaCosa.nivelPeligrosidad()>nivel})}
    
    method objetosMasPeligrososQue(cosa){ return self.objetosPeligrosos({cosas.nivelPeligrosidad()})}
    
    method puedeCircularEnRuta(nivelMaximoPeligrosidad){return not cosas.any({unaCosa=>unaCosa.nivelPeligrosidad()>nivelMaximoPeligrosidad})}
    
    method tieneAlgoQuePesaEntre(min, max){}
    
    method cosaMasPesada(){}
    
    method totalBultos(){}
}
