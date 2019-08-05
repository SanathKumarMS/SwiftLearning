//: [Previous](@previous)

import Foundation


enum VendingMachineError : Error
{
    case invalidSelection
    case insufficientFunds(coinsNeeded : Int)
    case outOfStock
}


//Propagating errors using Throwing functions
struct Item
{
    var price : Int
    var count : Int
}

class VendingMachine
{
    var inventory =
    [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinsDeposited = 0
    
    func vend(itemName name : String) throws
    {
        guard let item = inventory[name] else
        {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else
        {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else
        {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing : \(name)")
    }
}


let vendingMachine = VendingMachine()
//vendingMachine.coinsDeposited = 12
//try vendingMachine.vend(itemName: "Pretzels")


//Handling errors using do-catch
let vending = VendingMachine()
vending.coinsDeposited = 10
do
{
    try vending.vend(itemName: "sf")
}
catch VendingMachineError.invalidSelection
{
    print("Invalid Selection")
}
catch VendingMachineError.outOfStock
{
    print("Out of Stock")
}


//Handle the error as an optional value

func add(a : Int, b : Int) throws -> Int
{
    if b > 10
    {
        throw VendingMachineError.outOfStock
    }
    let sum = a+b
    return sum
}

let s = try? add(a: 4, b: 12)


//Disable error propagation

let sum1 = try! add(a: 4, b: 3)

