import UIKit


//Variables and constants
var variable = 3
variable = 10

let cons = 1

var str : String = "Hello"
var count : Int = 5
var perc : Float = 4.0
var doub : Double = 11.0
var c : Character = "c"

print(type(of : perc), terminator : "")
print()

//Int to String
var n = 5
var strn = String(n)

//String to Int
strn = "10"
n = Int(strn)!

//Optional variable
var str1 : String? = "FCB"

//Forced Unwrapping
if str1 != nil
{
    print(str1!)
}

//Optional Binding
if var str2 = str1
{
    print(str2)
}
else
{
    print("str1 contains nul")
}


//Tuples
let http200code = (200, "OK")
let (code, message) = http200code
print(String(code) + " " + message)
print("\(code) " + message)


//String concatenation
var s1 = "Sanath"
var s2 = "Kumar"
var s = s1 + " " + s2

//Character at index
s1.count
var index = s1.index(s1.startIndex, offsetBy: 2)
s1[index]

index = s1.firstIndex(of: "n")!


//String append
var s3 = "Leo"
s3.append(" Messi")

//String interpolation
print("\(count) feet away")

//Print characters in a string
s3 = "Leo Messi"
for char in s3
{
    print(char)
}


