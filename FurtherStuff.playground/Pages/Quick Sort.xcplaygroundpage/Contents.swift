//: [Previous](@previous)

import Foundation

var a = [4,7,3]
print(a)

func sort(a : inout [Int], l : Int, r : Int)
{
    if(l < r)
    {
        let s = partition(a : &a, l : l ,r : r)
        sort(a : &a,l : l,r : s-1)
        sort(a : &a,l : s+1,r : r)
    }
}

func partition(a : inout [Int], l : Int, r : Int) -> Int
{
    var pI = 0
    let left = l
    let right = r
    let pivot = a[right]
    
    for i in left...right
    {
        if a[i] >= pivot
        {
            let temp = a[i]
            a[i] = a[pI]
            a[pI] = temp
            pI += 1
        }
    }
    
    let temp = a[pI]
    a[pI] = a[right]
    a[right] = temp
    
    return pI
}

sort(a : &a, l : 0, r : a.count-1)
print(a)
