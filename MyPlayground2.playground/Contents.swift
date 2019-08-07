import UIKit

//String literals
let str = "This is a string literal"

let dollarSign = "\u{24}"


//String concat
var s1 = "Valar"
var s2 = "Morghulis"
s1 += s2


//Count of characters in a string
s1 = "Hey"
s1.count


//Position of a character in a string

/*
Different characters can require different amounts of memory to store, so in order to determine which Character is at a particular position, you must iterate over each Unicode scalar from the start or
end of that String. For this reason, Swift strings can’t be indexed by integer values.
*/

s1 = "Sanath"
var count = 0
for char in s1
{
    if char == "h"
    {
        print("Found at \(count)")
        break
    }
    count += 1
}


//Accessing characters of a string
s1 = "Sanath"
s1[s1.startIndex]
s1[s1.index(s1.endIndex, offsetBy: -1)]
s1[s1.index(before : s1.endIndex)]


//Inserting into a string
s1 = "Hello"
s1.insert("$", at: s1.endIndex)
print(s1)


//Removing from a string
s1.remove(at: s1.index(before : s1.endIndex))
print(s1)


//Substrings
s1 = "Hows it going, bros"
var index = s1.firstIndex(of: ",") ?? s1.endIndex
var beg = s1[..<index]

var storeString = String(beg)


//String comparison
s1 = "cad"
var s3 = "cawd"
s1 == s3
