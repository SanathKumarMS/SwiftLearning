import UIKit

//Functions

func addTwoNumbers(a : Int, b : Int) -> Int
{
    return (a+b)
}

var sum = addTwoNumbers(a : 2, b : 4)
print(sum)


func addAndPrint(a : Int, b : Int)
{
    print(a+b)
}

addAndPrint(a: 4, b: 3)


//MinMax
func minMax(array : [Int]) -> (Int,Int)?
{
    if array.count == 0
    {
        return nil
    }
    var min = array[0]
    var max = array[0]
    
    for i in 1..<array.count
    {
        if array[i] < min
        {
            min = array[i]
        }
    }
    
    for i in 1..<array.count
    {
        if array[i] > max
        {
            max = array[i]
        }
    }
    //print("Min : \(min)")
    //print("Max : \(max)")
    return (min,max)
}

var array : [Int] = [0,4,7,2,5,9,6]
var minmax = minMax(array : array)

