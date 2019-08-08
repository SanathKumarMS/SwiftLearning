import UIKit

//Closures
//  { (parameters) -> return type in
//    statements
//  }


var s = [4,2,7,1,8]

func backward(_ s1 : Int, _ s2 : Int) -> Bool
{
    return s1 < s2
}

	
var sorteds = s.sorted(by: backward)


var sortedss = s.sorted(by : { (s1 : Int, s2 : Int) -> Bool in
                                return s1 > s2
                            })


sortedss = s.sorted(by : { s1,s2 in return s1 > s2 })
print(sortedss)

sortedss = s.sorted(by : { s1,s2 in s1 > s2 })
print(sortedss)

sortedss = s.sorted(by : { $0 > $1 })
print(sortedss)



//Trailing closures


sorteds = s.sorted() { $0 < $1 }
print(sorteds)

//If it is the only argument
sorteds = s.sorted { $0 < $1 }
print(sorteds)


var a = [4,7,3,8]
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
    let right = r - 1
    let pivot = a[right]
    
    for i in left...right
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

sort(a : &a, l : 0, r : a.count-1)
print(a)




