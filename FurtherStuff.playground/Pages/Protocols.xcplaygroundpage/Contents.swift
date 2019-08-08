//: [Previous](@previous)

import Foundation

protocol Flying
{
    var height : Int { get }
    var topSpeed : Int { get set }
    func fly()
}




class Airplane : Flying
{
    var noOfEngines : Int = 0
    var noOfPassengers : Int = 0
    var topSpeed : Int = 0
    var height : Int = 10
    
    func fly()
    {
        noOfPassengers = 78
        print("The plane has wings and uses the runway to gain speed and take off")
    }
}

class Bird : Flying
{
    var color : String = ""
    var wingSpan : Double = 0.0
    var topSpeed : Int = 0
    var height : Int = 24
    var flying : Flying? = Airplane()
    
    func fly()
    {
        print("The bird flaps its wings to fly")
    }
}

var flying : Flying? = Airplane()

//var plane = Airplane()
//plane.fly()
//plane.height = 50
//print(plane.height)
//print(plane.noOfPassengers)

var crow = Bird()
crow.fly()



protocol Togglable
{
    mutating func toggle()
    init(value : Bool)
}

//enum onOffSwitch : Togglable
//{
//    case off,on
//    mutating func toggle()
//    {
//        switch self
//        {
//            case .off : self = .on
//            case .on : self = .off
//        }
//    }
//}

class AnotherSwitch : Togglable
{
    var value : Bool = true
    func toggle()
    {
        value = value == true ? false : true
    }
    
    required init(value : Bool)
    {
        self.value = value
    }
}

var obj = AnotherSwitch(value: false)
print(obj.value)
obj.toggle()
print(obj.value)

//var light = onOffSwitch.off
//light.toggle()

