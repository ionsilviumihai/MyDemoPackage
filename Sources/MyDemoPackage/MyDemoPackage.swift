import CryptoKit

public struct MyDemoPackage {
    
    public init() {}
    
    public func caesarCipher(message: String, shift: Int, encrypt: Bool) -> String {
        var result = ""
        
        for character in message {
            if let scalar = character.unicodeScalars.first {
                let unicode = Int(scalar.value)
                var shiftedUnicode = unicode
                if character.isLetter {
                    let shiftValue = encrypt ? shift : -shift
                    shiftedUnicode += shiftValue
                    
                    if character.isUppercase {
                        shiftedUnicode = (shiftedUnicode - 65 + 26) % 26 + 65
                    } else {
                        shiftedUnicode = (shiftedUnicode - 97 + 26) % 26 + 97
                    }
                    result.append(Character(UnicodeScalar(shiftedUnicode)!))
                } else {
                    result.append(character)
                }
            } else {
                result.append(character)
            }
        }
        
        return result
    }
}
