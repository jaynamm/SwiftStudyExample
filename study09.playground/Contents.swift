import UIKit

var integers = [1, 2, 3]
let people = ["jaynam": 10, "jay": 20, "nam": 28]

//for <#item#> in <#items#> {
//    <#code#>
//}

for integer in integers {
    print(integer)
}

// ==================== 출력 결과 ====================

//while <#condition#> {
//    <#code#>
//}
var whiles = [1, 2, 3]

while whiles.count < 1 {
    whiles.removeLast()
}

//repeat {
//    code
//} while condition
var repeats = [1, 2, 3]

repeat {
    repeats.removeLast()
} while repeats.count > 0
