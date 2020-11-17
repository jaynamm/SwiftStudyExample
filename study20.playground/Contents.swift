import Swift

class PersonPropertyInit {
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

// 인스턴스 생성
let je: PersonPropertyInit = PersonPropertyInit()

// 미리 기본값을 할당해두었기 때문에 인스턴스가 생성되면서 초기값을 가져온다.
print("이름 : \(je.name) , 나이 : \(je.age) , 별명 : \(je.nickName)")

// 기본값이 인스턴스가 지녀야 할 값과 맞지 않다면
// 생성된 인스턴스의 프로퍼티에 각각 값 할당
je.name = "je"
je.age = 28
je.nickName = "j2"

// 다시 각각의 값을 할당해주고 출력해보았다.
print("이름 : \(je.name) , 나이 : \(je.age) , 별명 : \(je.nickName)")




class PersonInitializer {
    // 저장 프로퍼티의 기본 값을 할당하지 않는다.
    var name: String
    var age: Int
    var nickName: String
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

// 인스턴스를 생성함과 동시에 이니셜라이저를 통해서 프로퍼티의 값을 할당해주고 있다.
let su: PersonInitializer = PersonInitializer.init(name: "su", age: 27, nickName: "수수")

// 이니셜라이저에서 할당한 값이 출력되는 것을 확인할 수 있다.
print("이름 : \(su.name) , 나이 : \(su.age) , 별명 : \(su.nickName)")


class PersonInitializerException {
    var name: String
    var age: Int
    // 옵셔널을 사용해서 이니셜라이저에서 초기값을 할당하지 않게 한다.
    var nickName: String?
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    
    // 위와 동일한 기능을 수행한다.
//    convenience init(name: String, age: Int, nickName: String) {
    // 클래스 내부의 이니셜라이저를 사용하려면 convenience 라는 키워드를 사용해줘야 한다.
//        self.init(name: name, age: age)
//        self.nickName = nickName
//    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


let ju: PersonInitializerException = PersonInitializerException.init(name: "ju", age: 27, nickName: "주주")
let du: PersonInitializerException = PersonInitializerException.init(name: "du", age: 22)

print("이름 : \(ju.name) , 나이 : \(ju.age) , 별명 : \(ju.nickName)")
print("이름 : \(du.name) , 나이 : \(du.age) , 별명 : \(du.nickName)")


class Puppy {
    var name: String
    var owner: PersonInitializerException!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name) 가 주인 \(owner.name) 와 산책을 합니다.")
    }
}

let coco: Puppy = Puppy(name: "coco")

// 주인이 없는 상태라서 오류가 발생한다.
// coco.goOut()

coco.owner = ju
coco.goOut()


class PersonFailInitializer {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        // 나이의 값이 0~120 에 포함되지 않으면 nil 로 반환된다.
        if (0...120).contains(age) == false {
            return nil
        }
        
        // 이름이 없으면 nil 반환
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

let john: PersonFailInitializer? = PersonFailInitializer(name: "john", age: 23)
let jake: PersonFailInitializer? = PersonFailInitializer(name: "joker", age: 130)
let bat: PersonFailInitializer? = PersonFailInitializer(name: "", age: 35)

print(jake)
print(bat)


class PersonDeinit {
    var name: String
    var pet: Puppy?
    var child: PersonInitializerException
    
    init(name: String, child: PersonInitializerException) {
        self.name = name
        self.child = child
    }

    // 인스턴스가 해제되는 시점에서 자동으로 호출된다.
    deinit {
        if let petName = pet?.name {
            print("\(name) 가 \(child.name) 에게 \(petName) 를 인도합니다.")
        }
    }
}

var dol: PersonDeinit? = PersonDeinit(name: "doldol", child: du)
dol?.pet = coco

// 인스턴스가 사라지면서 deinit 가 자동으로 호출된다.
dol = nil
