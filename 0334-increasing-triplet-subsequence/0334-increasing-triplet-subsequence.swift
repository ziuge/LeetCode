class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var first = Int.max
        var second = first
        var answer = false
        
        nums.forEach { item in 
            if item <= first {
                first = item
            } else if item <= second {
                second = item
            } else {
                answer = true
            }
        }
        
        return answer
    }
}