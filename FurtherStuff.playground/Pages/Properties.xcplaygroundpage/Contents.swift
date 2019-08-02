//: [Previous](@previous)

import Foundation

//Properties
//Types - Stored and Computed
//        Instance and Type


//Stored Properties
//Types - Variable or constant

struct FixedLengthRange
{
    var firstNum : Int
    let len : Int
}

var rangeOfThree = FixedLengthRange(firstNum: 5, len: 4)
rangeOfThree.firstNum = 8

//rangeOfThree.len = 2


let rangeOfTwo = FixedLengthRange(firstNum: 2, len: 3)
//rangeOfTwo.firstNum = 1


//Lazy Stored Properties

class Rectangle
{
    var length : Double
    var breadth : Double
    lazy var area = length * breadth
    
    init()
    {
        self.length = 4
        self.breadth = 5
    }
}

var rect = Rectangle()
rect.area


//Computed Properties

var s = "Sanath"
var idx = s.index(s.startIndex, offsetBy: 2)
s[idx]


class Square
{
    var side : Double = 0
    var area : Double
    {
        get
        {
            return self.side * self.side
        }
        set(value)
        {
            self.side = sqrt(value)
        }
    }
}

var sq = Square()
sq.area = 36
sq.side


//Read only	Computed Properties

class RectangleAbs
{
    var length : Double = 0
    var breadth : Double = 0
    
    var area : Double
    {
        get
        {
            return length * breadth
        }
    }
}

var rec = RectangleAbs()
rec.length = 2
rec.breadth = 8
print(rec.area)


//Property observers - willSet and didSet

class StepCounter
{
    var totalSteps : Int = 0
    {
        willSet
        {
            print("About to set to \(newValue)")
        }
        didSet
        {
            print("Added \(totalSteps - oldValue) steps")
        }
    }
}

var counter = StepCounter()
counter.totalSteps = 100
counter.totalSteps = 150
counter.totalSteps = 300


//Type properties

class SomeClass
{
    static var count : Int = 0
    static var computedTypeProperty : Int
    {
        return 10
    }
    class var overrideableProperty : Int
    {
        return 43
    }
}

SomeClass.count = 10
print(SomeClass.count)






























