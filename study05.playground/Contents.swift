import UIKit

//MARK: - Array
var integers: Array<Int> = Array<Int>()

// 위와 동일한 표현
// var integers: Array<Int> = [Int]()
// var integers: Array<Int> = []
// var integers: [Int] = Array<Int>()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers = [Int]()

//   =================== 출력 결과 ===================

integers.append(1)
integers.append(2)
integers.append(3)
integers.append(4)
integers.append(5)
print(integers)

// 컬렉션에 들어있는 멤버의 수 출력
integers.count
print(integers.count)

// 포함하는지 여부 확인
integers.contains(1)
print(integers.contains(1))
integers.contains(10)
print(integers.contains(10))

// 해당 인덱스의 값을 삭제
integers.remove(at: 0)
print(integers)
// 마지막 멤버 삭제
integers.removeLast()
print(integers)
// 전부 삭제
integers.removeAll()
print(integers)

integers.count
print(integers.count)

// Array<Double>()와 [Double]() 는 동일한 표현
var doubles: Array<Double> = [Double]()

// let 상수로 배열을 선언하게 되면 변경이 불가능하다.
let immutableArray = [1, 2, 3]
//immutableArray.removeAll()

//MARK: - Dictionary

var anyDictionary: Dictionary<String, Any> = [String:Any]()

// 위와 동일한 표현
// var anyDictionary: Dictionary <String, Any> = Dictionary<String, Any>()
// var anyDictionary: Dictionary <String, Any> = [:]
// var anyDictionary: [String: Any] = Dictionary<String, Any>()
// var anyDictionary: [String: Any] = [String: Any]()
// var anyDictionary: [String: Any] = [:]
// var anyDictionary = [String: Any]()

// 키에 해당하는 값을 할당한다.
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

print(anyDictionary)

// 키에 해당하는 값을 변경한다.
anyDictionary["someKey"] = "dictionary"
print(anyDictionary)

// 키에 해당하는 값을 제거한다.
anyDictionary.removeValue(forKey: "anotherKey")
print(anyDictionary)

// 키의 값을 nil로 해줌으로써 제거가 가능하다.
anyDictionary["someKey"] = nil
print(anyDictionary)

// 변하지 않는 딕셔너리 생성
let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "jaynam", "gender": "male"]



//MARK: - Set

var intergerSet: Set<Int> = Set<Int>()

// insert() 를 통해서 입력 가능
// 순서는 무작위로 정해진다.
intergerSet.insert(1)
intergerSet.insert(2)
// 중복된 값이 없다.
intergerSet.insert(3)
intergerSet.insert(3)
intergerSet.insert(3)
intergerSet.insert(4)
intergerSet.insert(5)
print(intergerSet)

// 멤버 개수 확인
intergerSet.count
print(intergerSet.count)

// 포함 여부 확인
intergerSet.contains(1)
intergerSet.contains(10)

// remove: 멤버 삭제
intergerSet.remove(5)
print(intergerSet)
intergerSet.removeFirst()
print(intergerSet)
intergerSet.removeAll()
print(intergerSet)


// Set은 합집합, 교집합, 차집합 등 집합 연산을 사용할 수 있다.
// 멤버의 유일성이 보장되기 때문에(중복이 없기 때문에)
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 합집합
let union: Set<Int> = setA.union(setB)
print(union)

// 합집합 오름차순 정렬하기
let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

// 교집합
let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

// 차집합
let subtracting: Set<Int> = setA.subtracting(setB)
print(subtracting)

