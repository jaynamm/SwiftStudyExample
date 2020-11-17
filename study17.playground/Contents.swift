import Swift


// 클로저 고급

// 클로저 기본 표현
func calcluate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int

// 후행 클로저 사용
result = calcluate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result)

// 반환타입 생략
// Int 타입을 반환할 것을 알기 때문에 생략해도된다. in은 생략하면 안된다.
result = calcluate(a: 10, b: 10) { (left: Int, right: Int) in
    return left + right
}

print(result)

// 단축 인자 이름
result = calcluate(a: 10, b: 10, method: {
    return $0 + $1
})

print(result)

result = calcluate(a: 10, b: 10) {
    return $0 + $1
}

print(result)

// 암시작 반환 표현
result = calcluate(a: 10, b: 10) {
    $0 + $1
}

print(result)

result = calcluate(a: 10, b: 10) { $0 + $1 }

print(result)
