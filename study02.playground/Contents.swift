// 변수와 상수

import Swift

// 상수 선언 키워드 let
// 변수 선언 키워드 var

// 상수 선언
// let 이름: 타입 = 값

// 변수 선언
// var 이름: 타입 = 값

// 값의 타입이 명확하면
// let 이름 = 값
// var 이름 = 값

let constant: String = "차후에 변경이 불가능한 상수 let"
var variable: String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
constant = "상수는 차후에 값을 변경할 수 없습니다" // 오류발생


// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 한다.
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

// 선언 후 첫 할당
sum = inputA + inputB

print(sum)

// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없다.

// 변수도 물론 차후에는 할당하는 것이 가능
var nickname: String

nickname = "jaynam"

// 변수는 차후에 수정해도 문제 없음
nickname = "jaynam2"
