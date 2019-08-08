//: [Previous](@previous)

import Foundation

var a = [5,7,3,4,1]

func ascending(_ n1 : Int, _ n2 : Int) -> Bool
{
    return n1 < n2
}

var sorteda = a.sorted(by : ascending)

var s = "Sanath"

var sortedasc = a.sorted(by: { (num1 : Int, num2 : Int) -> Bool in
    return num1 < num2
})



var sorteddesc = a.sorted(by: { (num1 : Int, num2 : Int) -> Bool in
   return num1 > num2
})


var shortway = a.sorted(by: { num1, num2 in return num1 < num2 })


var shorterway = a.sorted(by: { num1,num2 in num1 < num2 })
print(shorterway)


var evenshorterway = a.sorted(by: { $0 < $1 })
print(evenshorterway)

var shortestway = a.sorted(by: <)


a = [16,345,90]
var d = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]

var stringa = a.map() { (number) -> String in
    var num = number
    var output = ""
    
    repeat
    {
        output = d[num%10]! + output
        num /= 10
    }while(num != 0)
    
    return output
}

//print(stringa)


func makeIncrement(forIncrement amount : Int) -> () -> Int
{
    var current = 0
    func incrementer() -> Int
    {
        current += amount
        return current
    }
    return incrementer
}


// var incrementBy10 = makeIncrement(forIncrement : 10)
// print(incrementBy10())
// print(incrementBy10())
// print(incrementBy10())
//
// var incrementBy2 = makeIncrement(forIncrement : 2)
// print(incrementBy2())
// print(incrementBy2())
// print(incrementBy2())


func sayHello(name : String) -> String
{
    return "Hello \(name)"
}

var hello = { (name : String) -> String in
    return "Hello \(name)"
}

print(hello("Sanath"))



//var st = "Sanath"
//
//st.insert("S", at: st.index(st.endIndex, offsetBy: -3))


func f(closure : () -> Void)
{
    closure()
}


var sum = 0
f(){ sum += 10 }
print(sum)


var catchClosures : [() -> Void] = []
func f2(closure : @escaping () -> Void)
{
    catchClosures.append(closure)
}

//sum = 0
//f2(){ sum += 40}
//var closure = catchClosures[0]
//closure()
//print(sum)


class C
{
    var x = 0
    
    func doSome()
    {
        f(){ x += 7 }
        
        f2() { self.x = 8}
    }
}

var c = C()
c.doSome()
print(c.x)
var closure = catchClosures[0]
closure()
print(c.x)




//c.f(){ c.x += 4 }
//print(c.x)
