import Swift

// MARK: - 옵셔널 바인딩
// 1. nil 체크 + 안전한 추출
// 2. 옵셔널 안에 값이 들어있는지 확인하고 값이 있으면 값을 꺼내옴
// 3. if-let 방식 사용

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}


var yourName: String! = nil

if let name: String = yourName {
    printName(name)
} else {
    print("yourName == nil")
}

// name 상수는 if-let 구문 내에서만 사용 가능
// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생

myName = "jaynam"
yourName = nil

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}


yourName = "Su"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

// MARK: - 강제 추출

//var myName: String? = "jaynam"
//var youName: String! = nil
//
//printName(myName!)
//myName = nil
//
//print(myName!)
//
//yourName = nil
//printName(yourName)



var array: [String]? = []

if let array = array, array.isEmpty {
    print("array is Empty !")
} else {
    print("array is not Empty !")
}


//let isEmptyArray = array?.isEmpty == true

array?.append("jaynam")

let isEmptyArray = array?.isEmpty == true
print(isEmptyArray)
