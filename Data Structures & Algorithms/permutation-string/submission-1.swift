class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        //making cgharacter array
        var arr1 = Array(s1)
        var arr2 = Array(s2)

        //arr2 is bigger
        guard arr2.count >= arr1.count else { return false }

        //fixing the window
        var window = [Character: Int]()
        var sliding = [Character: Int]()
        for (c1, c2) in zip(arr1, arr2) {
            window[c1, default: 0] += 1
            sliding[c2, default: 0] += 1
        }

        //if matches
        if window == sliding { return true }

        //start sliding
        for i in arr1.count..<arr2.count {
            //get the character
            let char = arr2[i - arr1.count]
            
            //drop the character from sliding
            sliding[char]! -= 1
            if sliding[char]! == 0 { 
                sliding.removeValue(forKey: char) 
            }

            //add new character
            sliding[arr2[i], default: 0] += 1

            //check if matches
            if sliding == window { return true }
        }
        
        return false
    }
}
