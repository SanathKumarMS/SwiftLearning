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



//Sets

//Initalise
var s = Set<String>()

//Insert
s.insert("Sanath")
s.insert("Sharad")
s.insert("Nithin")
print(s)

//Create from array
var bis : Set<String> = ["Oreo", "Bourbon", "Hide and Seek"]
print(bis)

//Count
bis.count

//Empty
bis.isEmpty

//Contains
bis.contains("Oreo")

//Remove
bis.remove("Oreo")
print(bis)

//Iterate
for item in bis
{
    print(item)
}

bis.insert("Oreo")
print(bis)

for item in bis.sorted()
{
    print(item)
}


//Fundamental set operations
var set1 : Set = [1,2,3,4,5]
var set2 : Set = [2,4,6,8,10]

//Union
var set3 = set1.union(set2).sorted()

//Intersection
var set4 = set1.intersection(set2)

//Difference
var set5 = set1.subtracting(set2)

//Symmetric Difference
var set6 = set1.symmetricDifference(set2)


























