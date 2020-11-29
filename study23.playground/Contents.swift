import UIKit

var someInt: Int = 0

assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0, "someInt != 0")
// Assertion failed: someInt != 0: file __lldb_expr_3/study23.playground, line 8

//if someInt == 1 {
//    assertionFailure("assertionFailure")
//}

func functionWithAssert(age: Int?) {
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다.")
    
    print("당신의 나이는 \(age!)세 입니다.")
}

functionWithAssert(age: 28)

// MARK:- gurad

func funcGuard(age: Int?) {
    guard let unwrappedAge = age,
          unwrappedAge < 130,
          unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다.")
        return
    }
    
    print("당신의 나이는 \(unwrappedAge)세 입니다.")
}

funcGuard(age: 28)
funcGuard(age: 140)

var count = 1

while true {
    guard count < 3 else {
        break
    }
    
    print(count)
    count+=1
}


func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        print("이름이 String 타입이 아니거나 없습니다.")
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        print("나이가 Int 타입이 아니거나 없습니다. 또는 0보다 작습니다.")
        return
    }
    
    print("\(name): \(age)")
}


someFunction(info: ["name": "jay", "age": "28"])
someFunction(info: ["name": "lake"])
someFunction(info: ["name": "nam", "age": 28])


// if let 구문
func iflet() {
    var someValue: Int?
    someValue = 3
    
    if let unwrapped: Int = someValue {
        print("if let \(unwrapped)")
    }
    
    //print(unwrapped)
}

iflet()


// guard let 구문
func guardlet() {
    var someValue: Int?
    someValue = 3
    
    guard let unwrapped: Int = someValue else {
        return
    }

    print("guard let \(unwrapped)")
}

guardlet()
