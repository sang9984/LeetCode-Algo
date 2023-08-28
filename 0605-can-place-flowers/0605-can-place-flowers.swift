class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowerbed2 = flowerbed
        var nn = n
        let countOfFlowerbed = flowerbed.count
        for i in 0..<countOfFlowerbed {
            if flowerbed2[i] == 0 {
                var left = true
                var right = true
                if i > 0 && flowerbed2[i - 1] != 0 { left = false }
                if i < countOfFlowerbed - 1 && flowerbed2[i + 1] != 0 { right = false }
                
                if left && right {
                    flowerbed2[i] = 1
                    nn -= 1
                }
                
                if nn <= 0 {
                    return true
                }
            }
        }
        return nn > 0 ? false : true
    }
}
