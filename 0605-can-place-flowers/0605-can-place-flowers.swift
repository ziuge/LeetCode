class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var maxFlower = 0
        var flowerbedSimul = flowerbed
        
        if flowerbed.count == 1 {
            if flowerbed[0] == 0 {
                return n <= 1
            } else {
                return n < 1
            }
        }
        
        if flowerbed[0] == 0 && flowerbed[1] == 0 {
            maxFlower += 1
            flowerbedSimul[0] = 1
        }
        if flowerbedSimul[flowerbed.count - 1] == 0 && flowerbedSimul[flowerbed.count - 2] == 0 {
            maxFlower += 1
            flowerbedSimul[flowerbed.count - 1] = 1
        }
        
        var i = 1
        
        while i < flowerbed.count - 2 {
            if flowerbedSimul[i-1] == 0 && flowerbedSimul[i] == 0 && flowerbedSimul[i+1] == 0 {
                flowerbedSimul[i] = 1
                maxFlower += 1
                i += 1
            } else {
                i += 1
            }
        }
        
        return n <= maxFlower
    }
}