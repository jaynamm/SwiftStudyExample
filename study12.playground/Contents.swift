import Swift

// 구조체

// MARK:- 정의

//struct 이름 {
//    구현부
//}

struct Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티(static 키워드 사용: 타입 자체가 사용하는 프로퍼티)
    
    // 인스턴스 메서드 (인스턴스가 사용하는 메서드)
    func instanceMethod() {
        print("instance Method !!!")
    }
    
    // 타입 메서드 (static 키워드 사용: 타입 자체가 사용하는 메서드)
    static func typeMethod() {
        print("type method !!!")
    }
}

// MARK:- 구조체 사용

var mutable: Sample = Sample()

mutable.mutableProperty = 200

// 불변 프로퍼티는 인스턴스 생성 후 수정할 수 없다.
//mutable.immutableProperty = 200

let immutable: Sample = Sample()

//immutable.mutableProperty = 200

// 불변 인스턴스는 아무리 가변 프로퍼티라도 인스턴스 생성 후 수정할 수 없다.
//immutable.mutableProperty = 200


Sample.typeProperty = 300
Sample.typeMethod()



struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생 타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name) 입니다.")
    }
}


Student.selfIntroduce()

var jaynam: Student = Student()
jaynam.name = "jaynam"
jaynam.class = "스위프트"
jaynam.selfIntroduce()

let jay: Student = Student()
//jay.name = "jay"
jay.selfIntroduce()
