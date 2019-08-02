//: [Previous](@previous)

import Foundation

var a = [4,7,3,10]
print(a)


func swapSecondLast(a : inout [Int])
{
    let n = a.count
    let temp = a[1]
    a[1] = a[n-2]
    a[n-2] = temp
}

func swapFirstLast(a : inout [Int])
{
    let n = a.count
    let temp = a[0]
    a[0] = a[n-1]
    a[n-1] = temp
    swapSecondLast(a: &a)
}

print(a)
//swapFirstLast(a: &a)
//swapSecondLast(a: &a)
print(a)


a = [4,7,3,10,5,15,13,14,11]

func qsort(a : inout [Int], l : Int, r :Int)
{
    if(l < r)
    {
        let s = partition(a: &a, left: l, right: r)
        qsort(a : &a, l : l, r : s-1)
        qsort(a : &a, l : s+1, r : r)
    }
}

func partition(a : inout [Int], left : Int, right : Int) -> Int
{
    var pI = left
    let pivot = a[right]
    
    for i in left..<right
    {
        if a[i] <= pivot
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

print(a)
qsort(a : &a, l : 0, r : a.count-1)
print(a)




/*
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
*/
