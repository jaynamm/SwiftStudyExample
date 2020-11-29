import Swift

//MARK:- type casting

class Person {
    var name: String = ""
    func breath() {
        print("하트 비트")
    }
}

// Person 클래스 상속
class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("학교 가자")
    }
}

// Student 클래스 상속
class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("엠티 궈궈~")
    }
}

// 각 클래스 인스턴스 생성
var jak: Person = Person()
var joe: Student = Student()
var jin: UniversityStudent = UniversityStudent()


// 타입 확인 is 사용
var result: Bool

result = jak is Person // true
result = jak is Student // false
result = jak is UniversityStudent // false

result = joe is Person // true
result = joe is Student // true
result = joe is UniversityStudent // false

result = jin is Person // true
result = jin is Student // true
result = jin is UniversityStudent // true

// 조건문을 통해서 사용할 수 있다.

if jak is UniversityStudent {
    print("나 대학생!")
} else if jak is Student {
    print("나 학생!")
} else if jak is Person {
    print("나 사람?!")
}

// switch 문에서도 사용할 수 있다.
switch jak{
case is Person:
    print("사람입니다.")
case is Student:
    print("학생입니다.")
case is UniversityStudent:
    print("대학생입니다.")
default:
    print("아무도 아니야~")
}

switch jin{
case is UniversityStudent:
    print("대학생입니다.")
case is Student:
    print("학생입니다.")
case is Person:
    print("사람입니다.")
default:
    print("아무도 아니야~")
}

// 업 캐스팅
// 부모 클래스의 인스턴스로 사용할 수 있게 해준다.
// 잘 사용하지는 않는다.
var vein: Person = UniversityStudent() as Person
var kaisa: Student = Student()
var caytlin: Any = Person() // as Any 생략 가능


// 다운 캐스팅
// as? or as!


// 조건부 다운 캐스팅
// as?
var optionalCasted: Student?

optionalCasted = vein as? UniversityStudent

optionalCasted = kaisa as? UniversityStudent // nil
optionalCasted = caytlin as? UniversityStudent // nil
optionalCasted = caytlin as? Student // nil

// 강제 다운 캐스팅
// as!

var forcedCaseted: Student

forcedCaseted = vein as! UniversityStudent
// 런타임 에러 발생
// forcedCaseted = kaisa as! UniversityStudent
// forcedCaseted = caytlin as! UniversityStudent
// forcedCaseted = caytlin as! Student

func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

doSomethingWithSwitch(someone: vein as Person)
doSomethingWithSwitch(someone: vein)
doSomethingWithSwitch(someone: kaisa)
doSomethingWithSwitch(someone: jak)

func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}


doSomething(someone: vein as Person)
doSomething(someone: vein)
doSomething(someone: kaisa)
doSomething(someone: jak)
