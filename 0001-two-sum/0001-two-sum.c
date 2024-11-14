#include <stdlib.h>

int* twoSum(int* nums, int numsSize, int target, int* returnSize) {
    // Allocate memory for the return array
    int* result = (int*)malloc(2 * sizeof(int));
    
    // Initialize returnSize to 2, since we're always returning two indices
    *returnSize = 2;

    // Loop through the array to find the pair that adds up to the target
    for (int i = 0; i < numsSize - 1; i++) {
        for (int j = i + 1; j < numsSize; j++) {
            if (nums[i] + nums[j] == target) {
                result[0] = i;
                result[1] = j;
                return result; // Return the result as soon as we find it
            }
        }
    }
    
    return result; // This line should never be reached if the input guarantees a solution
}