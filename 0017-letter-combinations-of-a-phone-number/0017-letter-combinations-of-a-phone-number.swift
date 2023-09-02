class Solution {
    let nums: [Character: [String]] = [
            "2":["a","b","c"],
            "3":["d","e","f"],
            "4":["g","h","i"],
            "5":["j","k","l"],
            "6":["m","n","o"],
            "7":["p","q","r","s"],
            "8":["t","u","v"],
            "9":["w","x","y","z"]
            ]
    
    var result = [String]()
    var numbers: [Character] = []
    
    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty {
            return []
        }
        
        numbers = Array(digits)
        
        backTracking(0, "")
        
        return result
    }

    func backTracking(_ index: Int, _ letter: String) {
        if index == numbers.count {
            result.append(letter)
            return
        }
        
        let num = numbers[index]
        
        guard let c = nums[num] else {return}
        
        for i in c {
            backTracking(index + 1, letter + i)
        }
    }
}
