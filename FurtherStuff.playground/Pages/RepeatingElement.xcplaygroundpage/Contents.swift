//: [Previous](@previous)

import Foundation

//First repeating character

var a = [4,7,2,5,4,1]
var dict : [Int:Int] = [Int:Int]()
print(dict)

for i in a
{
    if dict[i] != nil
    {
        print(i)
        break
    }
    else
    {
        dict[i] = 1
    }
}


