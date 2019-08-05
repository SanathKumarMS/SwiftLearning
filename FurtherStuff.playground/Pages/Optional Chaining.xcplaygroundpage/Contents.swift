//: [Previous](@previous)

import Foundation


var a : Int?

a = 5

print(a!)

a = nil


//Guard statments
var c : Int?
c = 14

func check(c : Int?)
{
    guard let b : Int = c else
    {
        return
    }
    print("B : \(b)")
}

//check(c : c)


var person = [1 : "Sanath", 2 : "Leo", 3 : "Rambo"]
//print(person)

func checkDict(d : [Int : String], key : Int)
{
    guard let name = d[key] else
    {
        print("Great")
        return
    }
    print(name)
}

//checkDict(d: person, key : 4)

func checkDictb(d : [Int : String], key : Int)
{
    if let name = d[key]
    {
        print(name)
    }
    else
    {
        return
    }
}

//checkDictb(d: person, key: 4)


//Optional Chaining


//class Residence
//{
//    var noOfRooms = 1
//}
//
//class Person
//{
//    var res : Residence?
//}
//
//let p = Person()
//p.res = Residence()
//p.res?.noOfRooms = 2
//
//if let rooms = p.res?.noOfRooms
//{
//    print(rooms)
//}
//else
//{
//    print("Unable to retrieve the no of rooms")
//}


class Person
{
    var residence : Residence?
}

class Room
{
    let name : String
    init(name : String)
    {
        self.name = name
    }
}

class Address
{
    var buildingName : String?
    var buildingNumber : String?
    var streetName : String?
    
    func buildingIdentifier() -> String?
    {
        if let buildingNumber = buildingNumber, let streetName = streetName
        {
            return "\(buildingNumber) \(streetName)"
        }
        else if let buildingName = buildingName
        {
            return "\(buildingName)"
        }
        else
        {
            return nil
        }
    }
}

class Residence
{
    var rooms = [Room]()
    
    var noOfRooms : Int
    {
        return rooms.count
    }
    
    var address : Address?
    
    func printNoOfRooms()
    {
        print("There are \(noOfRooms) rooms")
    }
    
    subscript(i : Int) -> Room
    {
        get
        {
            return rooms[i]
        }
        set
        {
            rooms[i] = newValue
        }
    }
}


let john = Person()
let res = Residence()

let kitchen = Room(name: "Kitchen")
let dining = Room(name : "Dining")
res.rooms.append(kitchen)
res.rooms.append(dining)
res.noOfRooms


var arr : [Any] = [john,res,kitchen]

for item in arr
{
    if let y = item as? Residence
    {
        print(y.noOfRooms)
    }
}

john.residence = res
//john.residence?.noOfRooms

let add = Address()
add.buildingName = "ABC"

john.residence?.address = add

if john.residence?.printNoOfRooms() != nil
{
    john.residence?.printNoOfRooms()
}
else
{
    print("Not able to access")
}


if let name = john.residence?[1].name
{
    print("First room : \(name)")
}
else
{
    print("Unable to access")
}


if let addr = john.residence?.address?.buildingName
{
    print(addr)
}
else
{
    print("Unable to access")
}

if let id = john.residence?.address?.buildingIdentifier()
{
    print("Building id : \(id)")
}
else
{
    print("----")
}
