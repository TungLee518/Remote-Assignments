//: # Remote Learning Assignment - Week 3
//: ## 1. Declare a closure
var isOdd = { (num: Int) -> Bool in
    var odd = false
    if num % 2 == 0 { odd = true }
    return odd
}

isOdd(20)
isOdd(19)
