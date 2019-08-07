import UIKit

//For-in loop

var a = [10,20,30,40]
for item in a
{
    print(item, terminator : " ")
}
print()


for i in 1...5
{
    print(i, terminator : " ")
}
print()


//While

var count = 0
while(count != 5)
{
    count += 1
}
print(count)


//Repeat-While

repeat
{
    count -= 1
}while(count != 0)
print(count)


//If statement

count = 10
if count < 10
{
    print("Less than 10")
}
else if count > 10
{
    print("Greater than 10")
}
else
{
    print("Equal to 10")
}


//Switch statement
let char : Character = "r"
switch(char)
{
    case "a" : print("a")
    case "r", "R" : print("r or R")
                    fallthrough
    case "z" : print("z")
    default : print("Not alpha")
}


//Fallthrough - The fallthrough keyword simply causes code execution to move directly to the statements inside the next case (or default case) block

var num = 14
switch(num)
{
case 0...20 : print("Small value")
              fallthrough
case 20...50 : print("Slighly large value")
               fallthrough
case 51...80 : print("Large")
case 81...120 : print("Very large")
case 120... : print("Highest")
case 20...24 : print("Check")
default : print("Negative")
}
print()

var somePoint = (0,0)
switch(somePoint)
{
case (0,0) : print("Origin")
case (_,0) : print("On X-axis")
case (0,_) : print("On Y-axis")
case (-2...2, -2...2) : print("Inside the box")
default: print("Outside the box")
}


//Guard statements
var person : [String : String] = [String :String]()
person["name"] = "Sanath"
person["loc"] = "Bengaluru"

func checkName(person : [String : String])
{
    guard let name = person["name"] else
    {
        return
    }
    
    print("Hi " + name)
    
}

checkName(person : person)







































































