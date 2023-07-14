class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var visited = [Bool](repeating: false, count: nums.count)
        
        func permutation(_ temp: [Int]) {
            if temp.count == nums.count {
                result.append(temp)
            }
            
            for i in 0...nums.count - 1 {
                if visited[i] == true {
                    continue
                } else {
                    visited[i] = true
                    permutation(temp + [nums[i]])
                    visited[i] = false
                }
            }
            
        }
        permutation([])
        
        return result
    }
}