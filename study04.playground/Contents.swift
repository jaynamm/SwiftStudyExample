import UIKit

var someAny: Any = 100
print(someAny)
someAny = "어떤 타입도 수용 가능"
print(someAny)
someAny = 123.12
print(someAny)

//MARK: - Any
//let someDouble: Double = someAny

// ================= 출력 결과 =================

//MARK: - AnyObject
class SomeClass {}

var someAnyObject: AnyObject = SomeClass()
print(someAnyObject)

//someAnyObject = 123.12

//MARK: - nil
someAny = nil
someAnyObject = nil
