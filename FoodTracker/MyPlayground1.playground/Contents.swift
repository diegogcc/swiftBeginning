import UIKit

class Persona{
    let nombre:String = "Diego"
    var edad:Int = 26
    
    func saludo() -> String{
        return "Hola mi nombre es \(nombre) y tengo \(edad) años"
    }
}

var objPers = Persona()
objPers.saludo()
