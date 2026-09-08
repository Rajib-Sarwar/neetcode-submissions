class MyHashSet {
    var items: [Int]

    init() {
        items = [Int]()
    }

    func add(_ key: Int) {
        if !contains(key) {
            items.append(key)
        }
    }

    func remove(_ key: Int) {
        if contains(key) {
            for (i, item) in items.enumerated() {
                if key == item {
                    items.swapAt(i, items.count - 1)
                    break
                }
            }
            items.removeLast()
        }
    }

    func contains(_ key: Int) -> Bool {
        return items.contains(key)
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
