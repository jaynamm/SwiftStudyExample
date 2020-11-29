import Swift

class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}


// 옵셔널 체이닝 사용
let jay: Person? = Person(name: "jay")
let apart: Apartment? = Apartment(dong: "36", ho: "48")
let superman: Person? = Person(name: "superman")

// 옵셔널 체이닝이 실행 후 결과 값이 nil 일 수 있으므로 결과 타입도 옵셔널이다.

// 만약 우리집의 경비원이 궁금하다면???

// 옵셔널 체이닝을 사용하지 않을 경우
func guardJob(owner: Person?) {
    if let owner = owner {
        print("집주인은 \(owner.name) 입니다.")
        if let home = owner.home {
            print("집은 \(home) 입니다.")
            if let `guard` = home.guard {
                print("우리집 경비원은 \(`guard`) 입니다.")
                if let guardJob = `guard`.job {
                    print("우리집 경비원의 직업은 \(guardJob) 입니다.")
                } else {
                    print("우리집 경비원은 직업이 없습니다.")
                }
            } else {
                print("경비원이 없습니다.")
            }
        } else {
            print("집이 없습니다.")
        }
    } else {
        print("집주인이 없습니다.")
    }
}

guardJob(owner: jay)

// 옵셔널 체이닝을 사용했을 때

func guardJobWithOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리집 경비원의 직업은 \(guardJob) 입니다.")
    } else {
        print("우리집 경비원은 직업이 없어요")
    }
}

guardJobWithOptionalChaining(owner: jay)

jay?.home?.guard?.job // nil

jay?.home = apart
jay?.home // Optional(Apartment)

jay?.home?.guard // nil

// 경비원 할당
jay?.home?.guard = superman
jay?.home?.guard // Optional(Person)

jay?.home?.guard?.name // superman
jay?.home?.guard?.job // nil

jay?.home?.guard?.job = "경비원"
jay?.home?.guard?.job // 경비원


// nil 병합 연산자
// 중위 연산자 ??
// Optional ?? Value
// 옵셔널 값이 nil 일 경우 우측의 값을 반환
// 띄어쓰기 주의

var guardJob: String
guardJob = jay?.home?.guard?.job ?? "슈퍼맨"

// nil 이 아니기 때문에 "경비원"의 값이 출력된다.
print(guardJob) // 경비원

jay?.home?.guard?.job = nil

guardJob = jay?.home?.guard?.job ?? "슈퍼맨"
// 경비원 직업은 nil 로 해주었기 때문에 "슈퍼맨"의 값이 할당된다.
print(guardJob) // 슈퍼맨
