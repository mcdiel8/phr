package phr

class Doctor {
    String nombre
    String apellido
    Especialidad especialidad
    Set citas
    
    static hasMany = [cita:Cita]
    
    static constraints = {
        nombre(blank:false)
    }
}
