class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = [Bool]()
        var max = candies.max()!

        for i in 0..<candies.count {
            let a = candies[i] + extraCandies
            if a >= max {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        return result
    }
}