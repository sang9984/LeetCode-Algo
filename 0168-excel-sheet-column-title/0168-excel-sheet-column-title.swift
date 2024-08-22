class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var arr = [Character]()
        var col = columnNumber

        while col > 0 {
            col -= 1 
            let a = col % 26
            arr.append(Character(UnicodeScalar(a + 65)!))  
            col /= 26
        }
        
        return String(arr.reversed())  
    }
}
