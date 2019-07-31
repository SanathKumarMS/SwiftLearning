import UIKit

//Collections


/*
Arrays are ordered collections of values.
Sets are unordered collections of unique values.
Dictionaries are unordered collections of key-value associations.
*/

var a : [Int] = []
a.append(10)
a.append(20)
a.append(30)
print(a)


var biscuits = ["Oreo", "Bourbon", "Hide and Seek"]

//Count of elements in the array
biscuits.count

//Check if empty
biscuits.isEmpty

//Append
biscuits += ["Fab"]
print(biscuits)

//Modify
biscuits[3] = "HSFab"
print(biscuits)

//Insert
biscuits.insert("KitKat", at: 0)
print(biscuits)

//Remove
biscuits.remove(at: 0)
print(biscuits)

//Iterate
for i in biscuits
{
    print(i, terminator: " ")
}
print()

for (index, value) in biscuits.enumerated()
{
    print("Index \(index) : " + value)
}
