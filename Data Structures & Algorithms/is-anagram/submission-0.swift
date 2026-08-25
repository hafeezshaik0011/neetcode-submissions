class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict : [Character: Int] = [:]

        if s.count != t.count{
            return false
        }

        for ch in s{
            dict[ch,default : 0] += 1
        }

        for ch in t {
            dict[ch, default : 0] -= 1
            if dict[ch]! < 0 {
                return false
            }
        }

        return true


    }
}
