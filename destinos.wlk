object paris{
    method combustibleNecesario(){
        return 50
    }
    method recuerdoTraido(){
        return "torre Eiffel"
    }
    method cumpleRestriccionDeViaje(unVehiculo){
        return unVehiculo.combustibleActual() >= self.combustibleNecesario()
    }
}

object buenosAires{
    method combustibleNecesario(){
        return 15
    }
    method recuerdoTraido(){
        return "mate"
    }
    method cumpleRestriccionDeViaje(unVehiculo){
        return unVehiculo.combustibleActual() >= 15 && unVehiculo.esRapido()
    }
}

object bagdad{
    method combustibleNecesario(){
        return 140
    }
    method recuerdoTraido(){
        return "bidónConPetroleo"
    }
    method cumpleRestriccionDeViaje(unVehiculo){
        //debe tener el combustible necesario para hacer el viaje
        return unVehiculo.combustibleActual() >= 140
    }
}

object lasVegas{

    var destinoHomenaje = paris
    var objetoHomenaje = "torre Eiffel"

    method combustibleNecesario(){
        return 80
    }
    method recuerdoTraido(){
        return objetoHomenaje
    }
    method cambiarHomenaje(unDestino){
        destinoHomenaje = unDestino
        objetoHomenaje = unDestino.recuerdoTraido()
    }
    method cumpleRestriccionDeViaje(unVehiculo){
        return unVehiculo.viajar(destinoHomenaje)
    }
    
}
