class Solution {

    func encode(_ strs: [String]) -> String {
        var result = ""

        for str in strs {
            result += "\(str.count)#\(str)"
        }
        return result
    }

    func decode(_ str: String) -> [String] {
        var result : [String] = []
        var i = 0 
        let chars = Array(str)

        while i < chars.count{
            var j = i 

            while chars[j] != "#"{
                j += 1
            }

            let length = Int(String(chars[i..<j]))!

            j += 1

            let word = String(chars[j..<(j + length)])
            result.append(word)

            i = j + length
        }

        return result         
    }
}
