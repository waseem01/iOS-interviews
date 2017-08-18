import Foundation

func divisor(num: Int) -> String {

    if num <= 0 {
        return "None"
    } else if num % 3 == 0 && num % 5 == 0 {
        return "ThreeAndFive"
    } else if num % 3 == 0  {
        return "Three"
    } else if num % 5 == 0 {
        return "Five"
    } else {
        return "None"
    }
}

print(divisor(num: 3))
print(divisor(num: 5))
print(divisor(num: 15))
print(divisor(num: 0))
print(divisor(num: 1))