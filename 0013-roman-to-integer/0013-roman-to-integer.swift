class Solution {
    func romanToInt(_ s: String) -> Int {
        let symbol = [
            "I" : 1,
            "V" : 5,
            "X" : 10,
            "L" : 50,
            "C" : 100,
            "D" : 500,
            "M" : 1000,
        ]

        var topValueOfStack = 0
        var result = 0

        for i in s {
            let currentValue = symbol[String(i)]!

            if currentValue > topValueOfStack {
                result += (currentValue - 2 * topValueOfStack)
            }else {
                result += currentValue
            } 
            topValueOfStack = currentValue
        }

        return result
    }
}