class RomanNumeralsTransformator {
    class MalformedRomanNumeral : Error {}
    
    let values : [Character : Int] = [
        "I" : 1,
        "V" : 5,
        "X" : 10,
        "L" : 50,
        "C" : 100
        ]
    
    let keys : [Character] = ["I", "V", "X", "L", "C"]

    func transform(_ roman: String) throws -> Int {
    
        var numerals = Array(roman)
        
        //4 I'sen
        if(numerals.contains("I")) {
            if(numerals.filter{$0 == "I"}.count >= 4) {
                throw MalformedRomanNumeral()
            }
            
            let key : Character = "I"
            for i in 0 ..< keys.firstIndex(of: key)! {
                if(i != keys.firstIndex(of: key)! - 2 && numerals.contains(keys[i]) && numerals.firstIndex(of: keys[i])! < numerals.firstIndex(of: key)!) {
                    throw MalformedRomanNumeral()
                }
            }
        }
        
        // V zwischen oder nach I'en
        if(numerals.contains("V")) {
            //mehrere V's
            if(numerals.filter{$0 == "V"}.count >= 2) {
                throw MalformedRomanNumeral()
            }
            // V zwischen oder nach I'en
            if(numerals.filter{$0 == "I"}.count >= 2 && numerals.firstIndex(of: "I")! < numerals.lastIndex(of: "V")!) {
                throw MalformedRomanNumeral()
            }
            
        }
        
        if(numerals.contains("L")) {
            //mehrere L's
            if(numerals.filter{$0 == "L"}.count >= 2) {
                throw MalformedRomanNumeral()
            }
            // L nach V
            if(numerals.contains("V") && numerals.firstIndex(of: "V")! < numerals.lastIndex(of: "L")!) {
                throw MalformedRomanNumeral()
            }
            // L nach I
            if(numerals.contains("I") && numerals.firstIndex(of: "I")! < numerals.lastIndex(of: "L")!) {
                throw MalformedRomanNumeral()
            }
            
            // L zwischen oder nach X'sen
            if(numerals.filter{$0 == "X"}.count >= 2 && numerals.firstIndex(of: "X")! < numerals.lastIndex(of: "L")!) {
                if(numerals[numerals.count - 2] != "I") {
                    throw MalformedRomanNumeral()
                }
            }

        }
        
        if(numerals.contains("X")) {
            // X zwischen oder nach I'sen
            if(numerals.filter{$0 == "I"}.count >= 2 && numerals.firstIndex(of: "I")! < numerals.lastIndex(of: "X")!) {
                throw MalformedRomanNumeral()
            }
            
            let key : Character = "X"
            let keyIndex = keys.firstIndex(of: key)!
            if(numerals.filter{$0 == key}.count >= 4) {
                if(numerals[numerals.count - 2] != keys[keyIndex - 2]) {
                    throw MalformedRomanNumeral()
                }
            }
            
            for i in 0 ..< keyIndex {
                if(i != keyIndex - 2 && numerals.contains(keys[i]) && numerals.firstIndex(of: keys[i])! < numerals.firstIndex(of: key)!) {
                    throw MalformedRomanNumeral()
                }
            }
        }
        
        if(numerals.contains("C")) {
            //C nach oder zwischen X'sen
            let key : Character = "C"
            let keyIndex = keys.firstIndex(of: key)!
            
            //X count >= 2 : siehe wie bei X's
            
            if(numerals.contains(keys[keyIndex - 2]) && numerals.firstIndex(of: keys[keyIndex - 2])! < numerals.firstIndex(of: key)!) {
                if(numerals[numerals.count - 2] != keys[keyIndex - 4]) {
                    throw MalformedRomanNumeral()
                }
            }
            
            if(numerals.filter{$0 == key}.count >= 4) {
                if(numerals[numerals.count - 2] != keys[keyIndex - 2]) {
                    throw MalformedRomanNumeral()
                }
            }
            
            for i in 0 ..< keyIndex {
                if(i != keyIndex - 2 && numerals.contains(keys[i]) && numerals.firstIndex(of: keys[i])! < numerals.firstIndex(of: key)!) {
                    throw MalformedRomanNumeral()
                }
            }
        }
        
        return reduce(roman)
    }
    
    private func reduce(_ roman: String) -> Int {
        var numerals: [Character] = Array(roman).reversed()
        var number = 0
        numerals = Array(roman).reversed()
        for i in (0 ..< numerals.count).reversed() {
            shouldPerformSubtraction(numerals, i) ? (number -= values[numerals[i]]!) : (number += values[numerals[i]]!)
        }
        return number
    }
    
    private func shouldPerformSubtraction(_ numerals: [Character],_ index: Int) -> Bool {
        return index >= 1 && hasSmallerValue(numerals[index], comparable: numerals[index - 1])
    }
    
    private func hasSmallerValue(_ char: Character, comparable: Character) -> Bool {
        return values[char]! < values[comparable]!
    }
    
}
