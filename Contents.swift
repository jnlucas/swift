import Foundation
//variaveis fortemente tipada ou aguarda um tipo a ser atribuido
var name = "teste"
print(name)
//nao necessita de ponto e virgula

//constantes
let test = "teste de constante"

print(test)



//concatenar string 

var firstName = "joao"

var age = 31
var lastName = "Neves"
//para concatenacao de variaveis de varios tipos, caso utilise string utilizar +
print("\(firstName) \(lastName) \(age)")

//Tupla
var address = ("Av paulista" , 1200, "sao paulo")



//Tupla nomeada
var address2:(street: String, number: Int, city: String) = ("Av paulista", 1200,"sao paulo")

print(address2.number)

//decompor a tupla
var (rua, numero, cidade) = address2
print(rua)



//decompor apenas um item da tupla
var (_, _, cidade2) = address2
print(cidade2)


//optional o interrogacao define que a vriavel pode ou nao ter valor
var cnh: String?

cnh = "12121233"

print(" minha cnh é \(cnh!)") // impressao de option quando temos ceteza que a variavel esta configurada


//option binding

if let myCNH = cnh {
    print("a minha cnh e \(myCNH)")
}else{
print(cnh!)
}


//Nil Coalescing Operator
let myCNH2 = cnh ?? ""

//Impliscit Unrapped Optional
var rg: String! //  explamacao define que uma variavel pode ser nula

print(rg)

//Impliscit Unrapped Optional
var rg2: String? //  explamacao define que uma variavel pode ser nula

print(rg2?.uppercased()) // caso o objeto nao exista utilize um interrogacao


//ARRAY

var shoppingList: [String] = ["queijo","teste",
"teste3"]

//array vazio

var emptyList = [String]()


//remover item de array
shoppingList.remove(at: 0)

print(shoppingList)


//dicionario colecao nao ordenada
var aurelio = [
    "piada": "teste",
    "teste": "1"
]

print(aurelio["piada"]!)



//for in, while, repeate while


for shopping in shoppingList{
    print(shopping)
}


for i in 0..<shoppingList.count {
    print("elemento \(i) igual a \(shoppingList[i])")
}


for (key, value) in aurelio{
    print(key)
    print(value)
}


print(shoppingList.contains("teste"))

//operadores ..., ..<

//operadores prefix
prefix operator >-
prefix func >- (rhs: Int) -> Int {

    return rhs * 2
    
}

print (>-90)

//operadores postfix

postfix operator <>!
postfix func <>! (lhs: Int) ->Int {
    var result: Int = 1
    
    for i in 1...lhs {
        result *= i
    }
    
    return result
    
}


print(3<>!)


//infix operadores

infix operator <-<
func <-< (lhs: Int, rhs: Int) -> [Int] {
    var numeros: [Int] = []
    for i in 0..<lhs {
        numeros.append(Int(arc4random_uniform(UInt32(rhs))))
    }
    return numeros.sorted()
    
}

6<-<30



























