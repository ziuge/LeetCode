class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let one = Array(word1)
        let two = Array(word2)

        var i = 0
        var answer = ""
        while i < one.count || i < two.count {
            if i < one.count {
                answer += String(one[i])
            }
            if i < two.count {
                answer += String(two[i])
            }
            i += 1
        }
        return answer
    }
}