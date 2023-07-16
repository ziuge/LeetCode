class Solution {
    func reverseWords(_ s: String) -> String {
        let arr = s.split(separator: " ").map( { String($0) })
        return arr.reversed().joined(separator: " ")
    }
}