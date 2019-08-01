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


func greet(person : String, from hometown : String)
{
    print("Hello " + person + " from " + hometown)
}
greet(person: "Sanath", from: "MH")



func add(_ a : Int, _ b : Int)
{
    print(a+b)
}
add(5,8)


//Default parameters
func addDef(a : Int, b : Int = 10)
{
    print(a+b)
}
addDef(a : 5)


//In-out parameters
func swap(a : inout Int, b : inout Int)
{
    let temp = a
    a = b
    b = temp
}
var a = 5
var b = 9
swap(a: &a, b: &b)
print("\(a)  \(b)")



//Binary search
array = [2,4,6,8,10]

func binarySearch(array : [Int], ele : Int)
{
    var l = 0
    var r = array.count - 1
    var mid : Int = 0
    while(l <= r)
    {
        mid = (l+r)/2
        print("\(mid)")
        if ele == array[mid]
        {
            print("\(ele) found at \(mid)")
            return
        }
        else if ele < array[mid]
        {
            r = mid - 1
        }
        else
        {
            l = mid + 1
        }
    }
    print("\(ele) not found")
}
binarySearch(array: array, ele: 10)


//Bubble sort
array = [1,7,4,32,2,8,5,10]

/*
for i in 0..<array.count
{
    for j in 0..<array.count-1-i
    {
        if array[j] > array[j+1]
        {
            let temp = array[j]
            array[j] = array[j+1]
            array[j+1] = temp
        }
    }
}
print(array)
*/

var i = 0
var n = array.count
while(i < n)
{
    var j = 0
    while(j < n-i-1)
    {
        if array[j] > array[j+1]
        {
            print("\(j) \(j+1) ")
            let temp = array[j]
            array[j] = array[j+1]
            array[j+1] = temp
        }
        j = j + 1
    }
    i += 1
}
print(array)
 
