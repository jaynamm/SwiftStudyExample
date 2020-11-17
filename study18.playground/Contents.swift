import Swift

struct Student {
    // 저장 프로퍼티
    var name: String = ""
    var `class`: String = "swift"
    var koreanAge: Int = 0
    
    // 연산 프로퍼티
    // var 로만 선언할 수 있다.
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    
    // 타입 프로퍼티
    static var typeDesctiption: String = "학생"

    
    // 읽기전용 인스턴스 연산 프로퍼티
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name) 입니다."
        }
    }
    
    static var selfIntroduction: String {
        return "학생 타입입니다."
    }
    
}

// 타입 연산 프로퍼티 사용
print(Student.selfIntroduction)

// 인스턴스 생성
var jaynam: Student = Student()
jaynam.koreanAge = 28

jaynam.name = "jay"
print(jaynam.name)

print(jaynam.selfIntroduction)


print("한국 나이는 \(jaynam.koreanAge)살이고 미국나이는 \(jaynam.westernAge)살 입니다.")


class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit) 에서 \(newValue) 로 변경될 예정이다.")
        }
        
        didSet {
            print("잔액이 \(oldValue) 에서 \(credit) 으로 변경되었다.")
        }
    }
}

let myAccount: Account = Account()
myAccount.credit = 1000

//struct Point {
//    var x: Int
//    var y: Int
//
//    var oppositionPoint: Point {
//        get {
//            return Point(x: 10, y: 20)
//        }
//
//        // 암시적으로 newValue 라는 매개변수를 사용할 수 있다.
//        set {
//            x = -newValue.x
//            y = -newValue.y
//        }
//
//        // set 에서 따로 매개변수 이름을 정해주려면
////        set(Param) {
////            x = Param.x
////            y = Param.y
////        }
//    }
//}

struct Point {
    var x: Int
    var y: Int
    
    var oppositionPoint: Point {
        get {
            return Point(x: 10, y: 20)
        }
    }
    
    //
//    var oppositionPoint: Point {
//        return Point(x: 10, y: 10)
//    }
}
