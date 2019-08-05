//: [Previous](@previous)

import Foundation

class Student
{
    var name = ""
    var id = 0
    
    init()
    {
        print("Creating object")
    }
    
    init(name : String, id : Int)
    {
        self.name = name
        self.id = id
        print("Creating object")
    }
    
    deinit
    {
        print("Deleting object")
    }
    
}

var s : Student? = Student(name : "Sanath", id : 397)
s = nil
