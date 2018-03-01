//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

enum Compass {
    case north
    case south
    case east
    case west
}

var heading: Compass = .south


//switch

switch heading {
case .north:
    print("indo para o nort")
    
case .south:
    print("indo para o sul")
    
case .east:
    print("indo para o lest")
    
default:
    //alowww
    print("indo para qualquer lugar")
}

//enum de strings

enum WeekDay: String{
    
    case sunday = "Domingo"
    case monday = "Segunda"
}

var today: WeekDay = .sunday

print("Hoje é \(today.rawValue)")


//atribuindo valores externos ao enum
let sunday: WeekDay? = WeekDay(rawValue: "Domingo")
print (sunday!.rawValue)


//valores associados
enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double)
}

let measure: Measure = .age(34)


switch measure {
case .age(let age):
    print("MINHA IDADE \(age)")
case .weight(let weight):
    print("MINHO PESO \(weight)")
case .size(let size):
    print("MEU TAMANHO \(size)")
   
}


//STRUCTS
struct Driver{
    var name: String
    var registration: String
    var age: Int
   //adicionar mutatin somente se for manipular dados da struct
    mutating func incrementAge()-> Int{
        age += 1
        return age
    }
}

var driver = Driver(name: "joaozinho", registration: "", age: 1)

var driver2 = driver
driver2.name = "joana"
print(driver.name)

print(driver2.incrementAge())


//functions
func teste() -> String{
    
    
    return "alowwwwww"
    
    
}

print(teste())
func doubles(a:Int = 10) -> Int{

    return a*a
   
}
print(doubles(a:1))

//para nao precisar declarar o nomo na utilizacao da funcao utiliza underline

func register(_ user:String){
    
    print("o usuario \(user) foi cadastrado")
    
}

register("joao")


//para passar varios numeros para funcao , passamos uma colecao de inteiros
func sumValue(_ initialValue: Int,with values: Int...) -> Int{
    var resultado: Int = initialValue
    for value in values{
        resultado += value
        
    }
    return resultado
}

print(sumValue(1, with: 2,3,4,5))



//funcao para retornar tupla

let student = "Fulano de tal;38"

func getStudentInfo(_ student:String) -> (name: String, age:Int){
    
    let data = student.components(separatedBy: ";")
    let name =  data[0]
    let age = Int(data[1])!
    return (name, age)
}


let myStudent = (getStudentInfo(student))

print(myStudent.name)


//passando funcao como parametros para outra funcao

func sum(a:Int, b:Int) -> Int{
    return a+b
}
func divide(a:Int, b:Int) -> Int{
    return a/b
}
func subtract(a:Int, b:Int) -> Int{
    return a-b
}

typealias Operation = (Int,Int) -> Int
func getOperation(named operation: String) -> Operation{
    switch operation {
    case "sum":
        return sum
    default:
        return divide
    }
    
    
}

var operation2 = getOperation(named: "sum")

print(operation2(2,4))

//funcao que recebe como parametro uma outra funcao
func calculate(a:Int, b: Int, operation: (Int,Int) -> Int) -> Int{
    return operation(a,b);
}
print(calculate(a: 1, b: 544, operation: subtract))

//closures

calculate(a: 2, b: 3, operation:{(a,b) -> Int in
        return a+b*b
})
//removendo trechos funcao ja sabe que recebe e retorna inteiros
calculate(a: 2, b: 3, operation:{a,b in
    return a+b*b
})
//removendo trechos funcao ja sabe que recebe e retorna inteiros

calculate(a: 2, b: 3, operation:{return $0+$1*$0 })

calculate(a: 2, b: 3, operation:{$0+$1*$0 })

//quando a closure for o ultimo parametro
calculate(a: 2, b: 3){$0+$1*$0 }


//utilizando array map
var names = [
"maria"
,"joao"
,"jose"
]

var bizzaro = names.map({$0.uppercased()})
print(bizzaro)









