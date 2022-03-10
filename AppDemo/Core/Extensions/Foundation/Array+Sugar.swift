extension Array {
  func at(_ index: Int?) -> Element? {
    if let index = index , index >= 0 && index < endIndex {
      return self[index]
    } else {
      return nil
    }
  }
}

func nextIndex(_ x: Int?) -> Int? {
  return ((x)! + 1)
}

func prevIndex(_ x: Int?) -> Int? {
  return ((x)! - 1)
}

extension Array where Element: Equatable {
    
   @discardableResult
    mutating func removeDuplicates() -> [Element] {
        self = reduce(into: [Element]()) {
            if !$0.contains($1) {
                $0.append($1)
            }
        }
        return self
    }
}
