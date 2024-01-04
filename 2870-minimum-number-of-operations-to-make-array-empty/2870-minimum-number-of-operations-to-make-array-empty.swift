class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var hash = [Int:Int]()  
        

        for i in nums {
            if hash[i] == nil {
                hash[i] = 1
            }else {
                hash[i]! += 1
            }
        }

        if hash.values.contains(1) {return -1}

        // 1을 제외한 모든 자연수는 2의 배수와 3의 배수의 조합으로 나누어 떨어진다
        return hash.values.map{($0 / 3) + ($0 % 3 > 0 ? 1 : 0)}.reduce(0,+)
    }
}