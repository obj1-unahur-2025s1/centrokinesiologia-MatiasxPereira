class Paciente{
  const property rutinaAsignada = []
  const edad
  method edad() = edad
  var  fortalezaMuscular
  method fortalezaMuscular() = fortalezaMuscular
  var  dolor
  method dolor() = dolor
  var property aparatos
  method realizarRutina(unaPersona) = if(unaPersona.puedeUtilizarBici()) rutinaAsignada.forEach({p=>p.usarAparato(unaPersona)})
  method puedeUsar(unAparato) = unAparato.puedeSerUsador(self)
  method usar(unAparato){
    if(!self.puedeUsar(unAparato)){
      self.error("El paciente no puede usar el aparato")
    }
    unAparato.usarAparato(self)
  }
  method disminuirDolor(unValor) {dolor = 0.max(dolor - unValor)}
  method aumentarFortalezaMuscular(unValor) {fortalezaMuscular = fortalezaMuscular + unValor}
}

class Magneto {
  method usarAparato(unaPersona) = unaPersona.disminuirDolor(unaPersona.dolor() * 0.1)
  method puedeSerUsador(unaPersona) = true
}

class Bicicleta {
  method usarAparato(unaPersona) {
    return 
      unaPersona.disminuirDolor(4)
      unaPersona.aumentarFortalezaMuscular(3)
  }
  method puedeSerUsador(unaPersona) = unaPersona.edad() > 8
}

class MiniTramp {
  method usarAparato(unaPersona) = unaPersona.aumentarFortalezaMuscular(unaPersona.edad()/10)
  method puedeSerUsador(unaPersona) = unaPersona.dolor() < 20
}
