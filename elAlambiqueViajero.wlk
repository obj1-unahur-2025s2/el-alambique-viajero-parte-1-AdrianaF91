import destinos.*
import vehiculos.*

object luke{
    var vehiculoActual = alambiqueVeloz
    var ultimoRecuerdoTraido = "mate"

    method cambiarVehiculo(unVehiculo){
        vehiculoActual = unVehiculo
    }
    method lugaresVisitados(){
        return vehiculoActual.lugaresVisitados()
    }
    method viajar(unDestino){
        vehiculoActual.ViajarA(unDestino)
    }
    method cambiarRecuerdoTraido(destino){
        ultimoRecuerdoTraido = destino.recuerdoTraido()
    }
    method ultimoRecuerdoTraido(){
        return ultimoRecuerdoTraido
    }
}

