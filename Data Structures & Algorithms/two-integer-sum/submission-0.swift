class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // for i in 0..<nums.count{
        //     for j in i + 1..<nums.count {
        //         if nums[i] + nums[j] == target{
        //             return [i , j]
        //         }
        //     }
        // }
        // return []

        var seen : [Int: Int] = [:]

        for i in 0..<nums.count{
            let complement = target - nums[i]

            
            if let index = seen[complement]{
                print("iii : \(seen[complement])")
                return [index,i]
            }
            seen[nums[i]] = i 
        }

        return []

    }
}
