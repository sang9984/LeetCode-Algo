class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var result = [Int]()
        
        for op in operations {
            switch op {
            case "C":
                if !result.isEmpty {
                    result.removeLast()
                }
            case "D":
                if let last = result.last {
                    result.append(last * 2)
                }
            case "+":
                if result.count >= 2 {
                    result.append(result[result.count - 1] + result[result.count - 2])
                } else if result.count == 1 {
                    result.append(result[0])
                }
            default:
                if let num = Int(op) {
                    result.append(num)
                }
            }
        }
        return result.reduce(0, +)
    }
}
