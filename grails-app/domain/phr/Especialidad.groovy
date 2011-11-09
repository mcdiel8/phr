package phr

class Especialidad {
    String nombre
    String descripcion
    
    static belongsTo = Doctor
    
    static constraints = {
        nombre(blank:false)
    }
}
