import UIKit

func addOne(left a:Int, right b:Int) -> Int {
    return a + b
}

func addTwo(a: Int = 0, b: Int = 0) -> Int {
    return a + b
}

addTwo()

addTwo(a: 10, b: 10)
addOne(a: 10, b:20)
