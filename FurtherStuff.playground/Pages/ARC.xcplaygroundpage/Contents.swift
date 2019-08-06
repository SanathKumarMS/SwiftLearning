//: [Previous](@previous)

import Foundation

class Person
{
    let name : String
    
    init(name : String)
    {
        self.name = name
        print("\(name) is being initialized")
    }
    
    var apartment : Apartment?
    
    deinit
    {
        print("\(name) is being DEinitialized")
    }
}

class Apartment
{
    let unit : String
    
    weak var tenant : Person?
    
    init(unit : String)
    {
        self.unit = unit
        print("\(unit) is being initialized")
    }
    
    deinit
    {
        print("\(unit) is being DEinitialized")
    }
}

//var john : Person?
//var unit4A : Apartment?
//
//john = Person(name: "John")
//unit4A = Apartment(unit: "4A")
//
//john?.apartment = unit4A
//unit4A?.tenant = john
//
//john = nil
//unit4A = nil


class Customer
{
    let name : String
    
    var card : CreditCard?
    
    init(name : String)
    {
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit
    {
        print("\(name) is being DEinitialized")
    }
}

class CreditCard
{
    let number : Int
    
    unowned let customer : Customer
    
    init(number : Int, customer : Customer)
    {
        self.number = number
        self.customer = customer
    }
    
    deinit
    {
        print("\(number) is being DEinitialized")
    }
    
}


//var john : Customer?
//john = Customer(name: "john")
//
//john?.card = CreditCard(number: 7898, customer: john!)
//
//john = nil


class Country
{
    let name : String
    var capitalCity : City!
    
    init(name : String, capital : String)
    {
        self.name = name
        self.capitalCity = City(name: capital, country: self)
    }
    
}


class City
{
    let name : String
    unowned var country : Country
    
    init(name : String, country : Country)
    {
        self.name = name
        self.country = country
    }
}

var india = Country(name: "India", capital: "Delhi")
print(india.capitalCity.name)

