import UIKit

//Closures
//  { (parameters) -> return type in
//    statements
//  }


var s = [4,2,7,1,8]

func backward(_ s1 : Int, _ s2 : Int) -> Bool
{
    return s1 < s2
}

var sorteds = s.sorted(by: backward)


var sortedss = s.sorted(by : { (s1 : Int, s2 : Int) -> Bool in
                                return s1 > s2
                            })


sortedss = s.sorted(by : { s1,s2 in return s1 > s2 })
print(sortedss)

sortedss = s.sorted(by : { s1,s2 in s1 > s2 })
print(sortedss)

sortedss = s.sorted(by : { $0 > $1 })
print(sortedss)



//Trailing closures


sorteds = s.sorted() { $0 < $1 }
print(sorteds)

//If it is the only argument
sorteds = s.sorted { $0 < $1 }
print(sorteds)



