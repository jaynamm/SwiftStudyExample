import Swift


// MARK:- 정의

//eum 이름 {
//    case 이름1
//    case 이름2
//    case 이름3, 이름4, 이름5
//}

// 에제

enum BootCamp {
    case iosCamp
    case androidCamp
    case webCamp
}

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon

// 타입이 명확하다면 .케이스 처럼 표현해도 무방합니다.
day = .tue

print(day)

enum Month {
    case jan
    case feb
    case mar
    case apr
}

// 열거형 타입과 케이스를 모두 사용하여도 된다.
//var whr: Month = Month.jan
var whr: Month = Month.jan
print(whr)
// 타입이 명확하다면 .케이스 처럼 표현해도 무방하다.
//whr = .mar
print(whr)

// switch 의 비교값에 열거형 타입이 위치할 때
// 모든 열거형 케이스를 포함한다면
// default 를 작성할 필요가 없다.
switch whr {
case .jan, .feb:
    print("겨울입니다.")
case .mar:
    print("봄입니다.")
case .apr:
    print("4월도 봄이다.")
}

enum Count: Int {
    case one = 1
    case two
    case three
    // one 과 원시값이 같기 때문에 ones 의 원시값을 1로 정의할 수 없다.
    //case ones = 1
}

var cnt: Count = Count.one

print(cnt.rawValue)
cnt = .two
print(cnt.rawValue)
cnt = .three
print(cnt.rawValue)

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

print("\(School.middle.rawValue)")
print("\(School.university.rawValue)")

// 원시값을 통해 초기화한 열거형 값은 옵셔널 타입으므로 School 타입이 될 수 없다.
// let Heungduck: School = School(rawValue: "high")
let Heungduck: School? = School(rawValue: "고등")

// if let 구문을 사용하면 원시값에 해당하는 케이스를 곧바로 사용할 수 있다.
if let miho: School = School(rawValue: "중등") {
    print("원시값 '중등' 에 해당하는 케이스는 \(miho) 이다")
} else {
    print("middle 에 해당하는 원시값이 없다.")
}

enum Job {
    case engineer
    case designer
    case programmer
    case developer
    
    func printMessage() {
        switch self {
        case .engineer:
            print("엔지니어!")
        case .designer:
            print("디자이너!")
        case .programmer:
            print("프로그래머!")
        case .developer:
            print("개발자!")
        // 열거형의 모든 케이스가 포함되어 있기 때문에 default 사용 안함
        }
    }
}

Job.engineer.printMessage()
