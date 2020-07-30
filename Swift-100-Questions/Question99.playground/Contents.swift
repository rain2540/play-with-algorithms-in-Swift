//: Example 99
//:
//: 题目：辗转相除法求两个数的最大公约数 (Greatest Common Divisor)
//:
//: 1.程序分析：
//:
//: 2.程序源代码：

import UIKit

// 元组
func gcd(a: Int, b: Int) -> Int {
    var x = a, y = b
    while y != 0 {
        (x, y) = (y, x % y)
    }
    return x
}

//  循环
func gcdLoop(a: Int, b: Int) -> Int {
    var x = a, y = b
    var n = x % y
    while n != 0 {
        x = y
        y = n
        n = x % y
    }
    return y
}

gcdLoop(a: 75, b: 100)


//  递归
func gcdRecursive(a: Int, b: Int) -> Int {
    return b == 0 ? a : gcdRecursive(a: b, b: a % b)
}

gcdRecursive(a: 75, b: 100)


//: 附：求两个数的最小公倍数 (Least Common Multiple)
//:
//: 1.程序分析：ab = gcd(a, b) * lcm(a, b)
//:
//: 2.程序源代码：

func lcm(a: Int, b: Int) -> Int {
    return (a * b) / gcd(a: a, b: b)
}

lcm(a: 75, b: 100)
