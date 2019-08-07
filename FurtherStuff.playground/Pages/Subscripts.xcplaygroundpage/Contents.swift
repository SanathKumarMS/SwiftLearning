//: [Previous](@previous)

import Foundation

var s = "Lionel"
var idx = s.index(s.startIndex, offsetBy : 1)
s[s.index(s.startIndex, offsetBy : 1)]

class StringAccess
{
    var s = "Sanath"
    
    subscript(index : Int) -> Character
    {
        get
        {
            return s[s.index(s.startIndex, offsetBy : index)]
        }
        set
        {
            let idx = s.index(s.startIndex, offsetBy : index)
            s.remove(at: idx)
            s.insert(newValue, at: idx)
        }
    }
}


var str = StringAccess()
str[5] = "S"
print(str.s)

