import UIKit

// MARK: - 매개변수 기본값

// 매개변수에 기본적으로 전달될 값을 미리 지정해 둘 수 있다.
// 기본값을 갖는 매개변수는 매개변수 목록 중 뒤쪽에 위치하는 것이 좋다.

//func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//    return 반환값
//}

func greeting(friend: String, me: String = "jaynam") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있다.
greeting(friend: "berry")
greeting(friend: "john", me: "jay")


// MARK: - 전달인자 레이블

//전달인자 레이블은 함수를 호출할 때
//매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용
//전달인자 레이블은 변경하면 동일한 이름의 함수를 중복으로 생성 가능

//func 함수이름 (전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    함수 구현
//    return
//}

func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 한다.
greeting(to: "hana", from: "jaynam")


// 함수를 호출할 때에는 전달인자 레이블을 사용해야 한다.
greeting(to: "hana", from: "jaynam")


// MARK: - 가변 매개변수

//func 함수이름 (전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    함수 구현
//    return
//}

// 전달 받을 값의 개수를 알기 어려울 때 사용
// 가변 매개변수는 함수당 하나만 가질 수 있다.
// 기본값이 있는 매개변수와 같이 가변 매개변수 역시 매개변수 목록 중 뒤쪽에 위치하는 것이 좋다.

func sayHelloToFriend(me: String, friends: String ... ) -> String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriend(me: "jaynam", friends: "hana", "john", "berry"))

print(sayHelloToFriend(me: "jaynam"))


// MARK: - 데이터 타입으로서의 함수

// 스위프트는 함수형 프로그래밍 패러타임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급 객체다.
// 그래서 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수 있다.
// 함수의 타입 포현: 반환 타입을 생략할 수 없다.

var someFuntion: (String, String) -> Void = greeting(to:from:)

someFuntion("eric", "jaynam")

someFuntion = greeting(friend: me:)
someFuntion("eric", "jaynam")

// 타입이 다른 함수는 할당할 수 없다.

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))

runAnother(function: someFuntion)

