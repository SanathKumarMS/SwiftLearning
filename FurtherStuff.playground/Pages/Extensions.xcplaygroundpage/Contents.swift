//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class Numbers
{
    var a : Int = 0
    var b : Int = 0
    
    func add()
    {
        let sum = a+b
        print(sum)
    }
    
    init()
    {
        self.a = 0
        self.b = 0
    }
    
    init(a : Int, b : Int)
    {
        self.a = a
        self.b = b
    }
}

let obj = Numbers(a : 8, b : 3)
obj.add()
obj.multiply()

extension Numbers
{
    //var c : Int = 0     Extensions cannot contain stored properties
    
    var average : Int{    //Can contain only stored properties
        return (a+b)/2
    }
    
    convenience init(b : Int) {
        self.init()
        self.b = b
    }
    
    
    func multiply()
    {
        let product = a*b
        print(product)
    }
}

var avg = obj.average

let obj2 = Numbers(b : 4)
obj2.add()
obj2.multiply()



enum College
{
    case Principal
    case Teacher
}

print(type(of : College.Principal))












