import Swift

//let optionalConstant: Int? = nil
//let someConstant: Int = nil

//var opVal: Int?
//print(opVal)


//func someOptionalFunction(someOptionalParam: Int?) {
//
//}
//
//func someFunction(someParam: Int) {
//
//}
//
//someOptionalFunction(someOptionalParam: nil)
//someFunction(someParam: nil)

//enum Optional<Wrapped>: ExpressibleByNilLiteral {
//    case none
//    case some(Wrapped)
//}
//
//// 완전한 문법
//let optionalValue: Optional<Int> = nil
//// 물음표로 표현 가능
//let optionalValue: Int? = nil

//var optionalValue: Int! = 100
//
//switch optionalValue {
//case .none:
//    print("This Optional variable is nil")
//case .some(let value):
//    print("Value is \(value)")
//}
//
//optionalValue = optionalValue + 1
//print(optionalValue)
//
//optionalValue = nil
//print(optionalValue)
//
//optionalValue = optionalValue + 1
//print(optionalValue)


// MARK: - Optional ?

//var optionalValue: Int? = 100
//
//switch optionalValue {
//case .none:
//    print("This Optional variable is nil")
//case .some(let value):
//    print("Value is \(value)")
//}
//
//// 기존 변수처럼 사용 불가
//optionalValue = optionalValue + 1
//print(optionalValue)
//
//// nill 할당 가능
//optionalValue = nil
//print(optionalValue)

// 옵셔널 타입
var someOptional: Int? = 10

// 변수에 옵셔널 타입을 할당
var Value = someOptional

//print(Value)

//var someUnwrapping: Int! = 10

// Int 타입의 값만 가지기 때문에 에러가 발생한다.

var Value2: Int = someOptional!
//print(Value2)


var someNil: Int? = nil
var Value3: Int = someNil!
print(Value3)


