class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [Int]()  
        var result = [Int](repeating: 0, count: temperatures.count)  

        for i in (0..<temperatures.count).reversed() {
            while !stack.isEmpty && temperatures[stack.last!] <= temperatures[i] {
                stack.removeLast()
            }
            
            if !stack.isEmpty {
                result[i] = stack.last! - i
            }
            
            stack.append(i)
        }

        return result
    }
}