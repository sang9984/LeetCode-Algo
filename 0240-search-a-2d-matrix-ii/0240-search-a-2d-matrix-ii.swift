class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for arr in matrix {
            if binarySearch(arr, 0, arr.count - 1, target) {
                return true
            }
        }

        return false
    }

    func binarySearch(_ arr: [Int], _ start: Int, _ end: Int, _ value: Int) -> Bool {
    if start > end {
        return false
    }
    
    let mid = start + (end - start) / 2

    if value == arr[mid] {
        return true
    } else if value > arr[mid] {
        return binarySearch(arr, mid + 1, end, value)
    } else {
        return binarySearch(arr, start, mid - 1, value)
    }
}

}