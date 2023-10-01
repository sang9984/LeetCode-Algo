class Solution {
    func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
        var result = [Int]()
        let sortedPotions = potions.sorted()

        for spell in spells {
            if spell * sortedPotions[sortedPotions.count - 1] < success {
                result.append(0)
                continue
            }

            var left = 0
            var right = sortedPotions.count - 1
            while left <= right {
                let mid = (left + right) / 2
                if spell * sortedPotions[mid] < success {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            result.append(sortedPotions.count - left)
        }
        return result
    }
}
