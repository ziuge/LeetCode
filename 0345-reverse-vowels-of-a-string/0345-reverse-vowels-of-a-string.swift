class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels: [String] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        let sArr = Array(s)
        var answer: [String] = Array(s.map({String($0)}))
        var temp: [String] = []
        
        for i in 0...s.count - 1 {
            if vowels.contains(String(sArr[i])) {
                temp.append(String(sArr[i]))
                answer[i] = "ㄱ"
            }
        }
        
        temp = temp.reversed()
        var k = 0
        for i in 0...s.count - 1 {
            if answer[i] == "ㄱ" {
                answer[i] = temp[k]
                k += 1
            }
        }
        
        return answer.joined()
        
    }
}