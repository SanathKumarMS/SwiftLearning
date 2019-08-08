//: [Previous](@previous)

import Foundation


//Function types
func addTwoInts(_ a : Int, _ b : Int) -> Int
{
    return a + b
}

print(type(of : addTwoInts))

func mulTwoInts(_ a : Int, _ b : Int) -> Int
{
    return a * b
}

print(type(of : mulTwoInts))
addTwoInts(4,6)


var mathFunc : (Int,Int) -> Int
mathFunc = addTwoInts

mathFunc(4,6)

mathFunc = mulTwoInts
mathFunc(3,9)

print(type(of : mathFunc))



//Function types as parameter types
func printMathFunc(_ mathFunc : (Int,Int) -> Int, _ a : Int, _ b : Int)
{
    print("Result is \(mathFunc(a,b))")
}

printMathFunc(addTwoInts,4,6)
printMathFunc(mulTwoInts,3,9)



//Function types as return types
func stepForward(_ n : Int) -> Int
{
    return n + 1
}

func stepBackward(_ n : Int) -> Int
{
    return n - 1
}


func moveCloserToZero(_ backward : Bool) -> (Int) -> Int
{
    return backward ? stepBackward : stepForward
}


var num = 5

var f = moveCloserToZero(num > 0)

while num != 0
{
    num = f(num)
    print(num)
}


//Nested functions

func chooseStepFunction(_ backward : Bool) -> (Int) -> Int
{
    func stepForward(_ n : Int) -> Int
    {
        return n + 1
    }
    
    func stepBackward(_ n : Int) -> Int
    {
        return n - 1
    }
    
    return backward ? stepBackward : stepForward
}


num = -5
f = chooseStepFunction(num > 0)

while num != 0
{
    num = f(num)
    print(num)
}




























