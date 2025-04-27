class Solution:
    def removeDuplicates(self, nums):
        if not nums:  # Edge case: empty list
            return 0
        
        k = 1  # Pointer for the next unique position
        
        for j in range(1, len(nums)):  # Iterate from the second element
            if nums[j] != nums[j - 1]:  # Check if current is unique
                nums[k] = nums[j]  # Move unique element forward
                k += 1  # Increment the unique index
        
        return k  # Length of the unique elements
