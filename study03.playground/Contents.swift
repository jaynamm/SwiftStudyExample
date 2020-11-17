import Swift

// Bool: true 와 false 값만 갖음
var someBool: Bool = true
print(someBool)

someBool = false
print(someBool)

// 컴파일 에러 발생
//someBool = 0
//print(someBool)
//
// 컴파일 에러 발생
//someBool = 1
//print(someBool)

// Int: 정수, 64비트
var someInt: Int = -100
print(someInt)

// UInt: 양의 정수 타입, 64비트
var someUInt: UInt = 100
print(someUInt)

//someUInt = -100
//print(someUInt)

// Float: 실수 타입, 부동소수형, 32비트
var someFloat: Float = 3.14
print(someFloat)

someFloat = 3
print(someFloat)

// Double: 부동소수형 타입, 64비트
var someDouble: Double = 3.14
print(someDouble)

someDouble = 3
print(someDouble)

//someDouble = someFloat
//print(someDouble)

// Character: 유니코드로 사용할 수 있는 모든 문자를 넣어줄 수 있다.
var someCharacter: Character = "😧"
print(someCharacter)
someCharacter = "가"
print(someCharacter)
someCharacter = "a"
print(someCharacter)

//someCharacter = "abc"
//print(someCharacter)

// String: 유니코드 사용
var someString: String = "하하하"
someString = someString + "더 웃어요!!"
print(someString)

//someString = someCharacter
//print(someString)


let integer = 100
let floatingPoint = 12.34
let apple = "A"
let floatingTest: Float = 3.21

print(type(of: integer))
print(type(of: floatingPoint))
print(type(of: apple))
print(type(of: floatingTest))

