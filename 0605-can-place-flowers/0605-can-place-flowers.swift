class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        
        var maxFlower = 0
        var plant = [0] + flowerbed + [0]
        
        for i in 1...flowerbed.count {
            if plant[i-1] == 0 && plant[i] == 0 && plant[i+1] == 0 {
                plant[i] = 1
                maxFlower += 1
            }
        }
        
        return n <= maxFlower
    }
}