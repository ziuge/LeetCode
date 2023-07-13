class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxCandies = candies.max()
        var answer: [Bool] = []
        
        candies.forEach { kid in
            if (kid + extraCandies) < maxCandies! {
                answer.append(false)
            } else {
                answer.append(true)
            }
        }
        
        return answer
    }
}