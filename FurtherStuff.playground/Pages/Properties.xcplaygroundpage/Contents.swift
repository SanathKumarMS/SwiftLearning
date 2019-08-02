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
sq.side = 4
sq.area































