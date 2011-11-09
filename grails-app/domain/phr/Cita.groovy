package phr

class Cita {
    Date fecha
    Doctor doctor
    String status
    
    static constraints = {
        fecha(blank:false)
        doctor(blank:false)
        status(inList:["Activa", "Pospuesta", "Cancelada"])
    }
}
