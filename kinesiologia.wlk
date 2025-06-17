class Paciente{
  const property rutinaAsignada = []
  var property edad
  var property fortalezaMuscular
  var property dolor
  var property aparatos
  method puedeUtilizarBici() = self.edad() > 8
  method realizarRutina(unaPersona) = if(unaPersona.puedeUtilizarBici()) rutinaAsignada.forEach({p=>p.usarAparato(unaPersona)})

}

class Magneto {
  method usarAparato(unaPersona) = unaPersona.dolor() * 0.9 
}

class Bicicleta {
  method usarAparato(unaPersona) {
    return 
    if (unaPersona.edad() > 8) {
      0.max(unaPersona.dolor() - 4)
      unaPersona.fortalezaMuscular() + 3
    } 
  }
}

class MiniTramp {
  method usarAparato(unaPersona) = if(unaPersona.dolor() < 20) unaPersona.fortalezaMuscular() + (unaPersona.edad()/10)
}
