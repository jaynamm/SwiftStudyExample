import Swift

let someInteger = 100

// MARK: - if-else

//if <#condition#> {
//    <#code#>
//} else if <#condition#> {
//    <#code#>
//} else {
//    <#code#>
//}

if someInteger < 100 {
    print("100미만")
} else if someInteger > 100 {
    print("100초과")
} else {
    print("100")
}

let someBool = true

if someBool {
    print("참")
} else {
    print("거짓")
}

// 스위프트 조건에는 항상 Bool 타입이 들어와야 한다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에 컴파일 오류가 발생한다.
// 예 ) if someInteger { }

// MARK: - switch

//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}


// break 를 사용하지 않아도 break가 작동된다.

switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

// 정수 외의 대부분의 기본 타입을 사용할 수 있다.

switch "jaynam" {
case "jake":
    print("jake")
    fallthrough
    // break 를 사용하고 싶다면 명시적으로 fallthrough 를 사용한다.
case "mina":
    print("mina")
case "jaynam":
    print("jaynam!!")
default:
    print("unknown")
}

switch "jaynam" {
case "jaynam", "jay":
    print("jaynam!!")
case "berry":
    print("very!!")
default:
    print("who are you?")
}


//==================== 출력 결과 ====================
