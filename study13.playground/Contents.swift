import Swift

//MAKR:- 정의

//class 이름 {
//    구현부
//}

class Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드 , 재정의 불가 타입 메서드
    static func typeMethod() {
        print("print method - static")
    }
    
    // 클래스 메서드 , 재정의 가능
    class func classMethod() {
        print("type method - class")
    }
}

// 인스턴스 생성 - 참조정보 수정 가능
var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200

// 컴파일 오류 발생
//mutableReference.immutableProperty = 200

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200
// 컴파일 에러 발생
//immutableReference.immutableProperty = 200

Sample.typeProperty = 300
Sample.typeMethod()
