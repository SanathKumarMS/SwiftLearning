import UIKit

//For-in loop

var a = [10,20,30,40]
for item in a
{
    print(item, terminator : " ")
}
print()


for i in 1...5
{
    print(i, terminator : " ")
}
print()


//While

var count = 0
while(count != 5)
{
    count += 1
}
print(count)


//Repeat-While

repeat
{
    count -= 1
}while(count != 0)
print(count)
