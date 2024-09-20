func prefixSum(nums []int) []int {
    n := len(nums)
    prefixSum := make([]int, n+1)
    for i := 0; i < n; i++ {
	prefixSum[i+1] = prefixSum[i] + nums[i]
    }
    return prefixSum
}
