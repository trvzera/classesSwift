import UIKit

class Veiculo {
    var marca: String
    var ano: Int
    var velocidade: Int = 0
    
    
    init(marca: String, ano: Int, velocidade: Int) {
        self.marca = marca
        self.ano = ano
        self.velocidade = velocidade
    }
    
    func acelerar() {
        velocidade += 10
    }
    
    func fazerBarulho() {
        print("Som genérico")
    }
    
}

class Carro: Veiculo {
    var numPortas: Int
    
    init(numPortas: Int, marca: String, ano: Int, velocidade: Int) {
        self.numPortas = numPortas
        super.init(marca: marca, ano: ano, velocidade: velocidade)
    }

    override func fazerBarulho() {
        print("Vrum Vrum")
    }
    

}

class Moto: Veiculo {
    var temCarenagem: Bool
    
    init(temCarenagem: Bool, marca: String, ano: Int, velocidade: Int) {
        self.temCarenagem = temCarenagem
        super.init(marca: marca, ano: ano, velocidade: velocidade)
    }
    
    override func fazerBarulho() {
        print("Randandan")
    }
}

let meuCarro = Carro(numPortas: 4, marca: "BWD", ano: 2026, velocidade: 0)

var carroAmigo = meuCarro

carroAmigo.marca = "Fusca"

print(meuCarro.marca)
// Saída: Fusca


let carro1 = Carro(numPortas: 2, marca: "Toyota", ano: 2014, velocidade: 30)
let carro2 = Carro(numPortas: 4, marca: "Fiat", ano: 2000, velocidade: 10)
let carro3 = Carro(numPortas: 4, marca: "Honda", ano: 2020, velocidade: 80)
let moto1 = Moto(temCarenagem: true, marca: "Yamaha", ano: 2013, velocidade: 100)
let moto2 = Moto(temCarenagem: false, marca: "Honda", ano: 1990, velocidade: 60)

var veiculos: Array<Veiculo> = [carro1, carro2, carro3, moto1, moto2]

for veiculo in veiculos {
    veiculo.acelerar()
    print("Acelerando... nova velocidade \(veiculo.velocidade)")
    veiculo.fazerBarulho()
    
    
    // Downcasting
    if var car = veiculo as? Carro {
        print(car.numPortas)
    }

}

