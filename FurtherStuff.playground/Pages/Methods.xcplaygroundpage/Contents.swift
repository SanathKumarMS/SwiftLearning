//: [Previous](@previous)

import Foundation

//Methods

class Counter
{
    var count : Int = 0
    
    func increment()
    {
        count += 1
    }
    
    func increment(by by : Int)
    {
        count += by
    }
    
    func reset()
    {
        count = 0
    }
}

var counter = Counter()
print(counter.count)
counter.increment()
print(counter.count)
counter.increment(by : 4)
print(counter.count)
counter.reset()
print(counter.count)


struct Point
{
    var x = 0.0
    var y = 0.0
    
    mutating func modify()
    {
        x = 2.0
        y = 4.0
    }
    
}

var point = Point()
print(point)
point.modify()
print(point)
