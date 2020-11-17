import Swift

// 코드의 블럭
// 일급 시민
// 변수, 상수 등으로 저장, 전달인자로 전달 가능
// 함수 : 이름이 있는 클로저

// MARK:- 정의

//{ (매개변수 목록) -> 반환타입 in
//    실행 코드
//}

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)

print(sumResult)

// 클로저 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sum(1, 2)
print(sumResult)

// 함수는 클로저의 일종

sum = sumFunction(a:b:)

sumResult = sum(1, 2)

print(sumResult)

// MARK:- 함수의 전달인자로서의 클로저

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
        return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

func calcluate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    // 함수 안에서 전달받은 클로저를 호출한다.
    return method(a, b)
}

var calcluated: Int

calcluated = calcluate(a: 50, b: 10, method: add)
print(calcluated)

calcluated = calcluate(a: 50, b: 10, method: substract)
print(calcluated)

calcluated = calcluate(a: 50, b: 10, method: divide)
print(calcluated)

calcluated = calcluate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})
print(calcluated)

