object tom {
    var energia = 50
    
    method energia() = energia

    method comer(unRaton) {
        energia += 12 + unRaton.peso()
    }

    method correr(metros) {
        energia -= self.consumoPorCorrer(metros)
    }

    method velocidadMaxima() = 5 + energia / 10

    method consumoPorCorrer(metros) {
        return metros / 2
    }

    method estaFeliz() = energia > 50

    method puedeCazar(metros) = energia >= self.consumoPorCorrer(metros)

    method cazar(unRaton,metros) {
        if(self.puedeCazar(metros)) {
            self.correr(metros)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2

    method cumplirAños() {
        edad += 1
    }
    method peso() = edad * 20
}

object nibbles {
    method peso() = 35
}

object perez {
    var dientesRecolectados = 0
    
    method peso() = 30 + dientesRecolectados * 2
    
    method recolectarDientes(unaCantidad) {
        dientesRecolectados += unaCantidad
    }
}