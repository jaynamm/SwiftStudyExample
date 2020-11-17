import Swift

// 구조체 정의
struct People {
    // 값을 저장하기 위한 프로퍼티 정의
    var name: String = "jaynam"
    var age: Int = 28
    var gender: String = "male"
    let country: String = "Korea"
    
    // 기능성 제공을 위한 메서드 정의
    func getPeopleInfo() {
        print("Name : \(name) , Age : \(age) , Gender : \(gender) , Country : \(country)")
    }
}

var me: People = People(name: "nam", age: 27, gender: "male")
me.getPeopleInfo()

me.age = 30
// 에러 발생
//me.country = "ENG"

me.getPeopleInfo()

// 클래스 정의
class Computer {
    // 값을 저장하기 위한 프로퍼티 정의
    var cpu: String = "AMD"
    var mem: Int = 16
    var disk: String = "1TB"
    
    // 기능성 제공을 위한 메서드 정의
    func getComputerInfo() {
        print("CPU : \(cpu) , MEMORY : \(mem) , DISK : \(disk)")
    }
}

// 에러 발생
//var cominfo: Computer = Computer(cpu: "intel", mem: 32, disk: "500GB")



struct Weight {
    let book: Int
    subscript(cnt: Int) -> Int {
        return book * cnt
    }
}

let myBagWeight = Weight(book: 3)
print("my bag weight is \(myBagWeight[3])")



class Temperature {
    var temp: Double

    init() {
        temp = 36.5
    }
}

var t = Temperature()
print("Now temperature is \(t.temp)")

class Temperatures {
    let temp: Double
    
    init(temp: Double) {
        self.temp = temp
    }
    
    func getTemp() {
        print("Now temperature is \(temp)")
    }
}

let tt = Temperatures(temp: 30.5)
tt.getTemp()




class Person {
    // 값을 저장하기 위한 프로퍼티 정의
    var name: String = "jaynam"
    var height:Float = 0.0
    var weight:Float = 0.0
    
    // 기능성 제공을 위한 메서드 정의
    func getPersonInfo() {
        print("Name : \(name) , Height : \(height) , Weight : \(weight)")
    }
    
    deinit {
        print("소멸자 확인~~~")
    }
}

var jay: Person = Person()
jay.height = 174.4
jay.weight = 65.0

let su: Person = Person()
su.height = 164.3
su.weight = 49.8

var jaynam: Person? = Person()

jaynam = nil


var typeCheck: Bool

typeCheck = jay is Person
typeCheck = jay is People


