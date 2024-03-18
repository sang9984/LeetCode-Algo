class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        newArr = nums1 + nums2
        newArr.sort()
        
        if len(newArr) == 1:
            return newArr[0]
        length = len(newArr)

        return newArr[length//2] if length%2 == 1 else (newArr[length//2-1] + newArr[length//2])/2