import UIKit

// 함수 기본 형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, ... ) -> 반환타입 {
//    함수 구현부
//    return
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 반환 값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, ... ) -> Void {
//    함수 구현부
//    return
//}

func printYourName(name: String) -> Void {
    print(name)
}

//MARK: - 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func maximumIntegerValue() -> Int {
    return Int.max
}


//MARK: - 매개변수와 반환 값이 없는 함수
//func 함수이름() -> Void {
//    함수 구현부
//    return
//}

func hello() -> Void {
    print("Hello")
}

//func 함수이름() {
//    함수 구현부
//    return
//}

func bye() {
    print("bye")
}

//MARK: - 함수 호출
sum(a:3, b: 5)

printYourName(name: "jaynam")

maximumIntegerValue()

hello()

bye()


// ==================== 출력 결과 ====================
