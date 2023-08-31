class Solution {
    func addDigits(_ num: Int) -> Int {
        if num == 0 {return 0}
        var result = String(num)
        
        while result.count > 1 {
            var buffer = [Int]()
            for i in Array(result) {
                buffer.append(Int(String(i))!)
            }
            result = String(buffer.reduce(0,+))
        }

        return Int(result)!
    }
}