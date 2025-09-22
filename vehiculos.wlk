import destinos.*
object alambiqueVeloz{

    var combustibleActual = 150
    var destinoActual = paris
    var recuerdoActual = "torre Eiffel"
    var lugaresVisitados = 0

    method lugaresVisitados(){
        return lugaresVisitados
    }
    method esRapido(){
        return true
    }
    method ViajarA(unDestino){
        if(unDestino.cumpleRestriccionDeViaje(self)){
            self.disminuirCombustible(unDestino)
            destinoActual = unDestino
            recuerdoActual = unDestino.recuerdoTraido()
            lugaresVisitados = lugaresVisitados + 1
        }
    }
    method disminuirCombustible(unDestino){
        combustibleActual = combustibleActual - unDestino.combustibleNecesario()
    }
    method destinoActual(){
        return destinoActual
    }
    method recuerdoActual(){
        return recuerdoActual
    }
}