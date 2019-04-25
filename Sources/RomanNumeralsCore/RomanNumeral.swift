struct RomanNumeral {
    let values : [Character : Int] = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100,
        "D" : 500,
        "M" : 1000,
    ]
    let keys : [Character] = ["I", "V", "X", "L", "C", "D", "M"]
    private let numeral : [Character]
    
    init(_ numeral: String) {
        self.numeral = Array(numeral)
    }
    
    func reduce() -> Int {
        return transformNumeral(Array(self.numeral))
    }
    
    private func numeralIsBigger(_ numeral: Character, as previous: Character) -> Bool {
        return keys.firstIndex(of: numeral)! >= keys.firstIndex(of: previous)!
    }
    
    private func transformNumeral(_ processed: [Character]) -> Int {
        var number = 0
        
        for i in (0 ..< processed.count).reversed() {
            if(i == processed.count - 1 || numeralIsBigger(processed[i], as: processed[i + 1])) {
                number += values[processed[i]]!
            }
            else {
                number -= values[processed[i]]!
            }
        }
        
        return number
    }
}
