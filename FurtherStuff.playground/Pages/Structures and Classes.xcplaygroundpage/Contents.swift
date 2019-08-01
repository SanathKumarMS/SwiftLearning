import UIKit

//Structure

struct Resolution
{
    var width = 0
    var height = 0
}

//Class
class Employee
{
    var name = ""
    var id = ""
    var age = 0
}

var res = Resolution()
res.width = 100
res.height = 200
print(res)

let hd = Resolution(width: 1920, height : 1080)
print(hd)

var sd = hd
sd.width = 480
print(sd)


var emp1 = Employee()
emp1.name = "Sanath"
emp1.id = "397"
emp1.age = 21
print(emp1.age)

var emp2 = emp1
emp2.age = 35
print(emp1.age)


if emp1 === emp2
{
    print("Same object")
}
