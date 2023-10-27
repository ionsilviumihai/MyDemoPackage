import CryptoKit

public struct MyDemoPackage {
    
    public func caesarCipher(message: String, shift: Int, encrypt: Bool) -> String {
        var result = ""

        for character in message {
            if let scalar = character.unicodeScalars.first {
                let unicode = Int(scalar.value)
                var shiftedUnicode = unicode
                if character.isLetter {
                    if character.isUppercase {
                        shiftedUnicode = (unicode - 65) + shift
                        shiftedUnicode = encrypt ? (shiftedUnicode % 26 + 26) % 26 + 65 : (shiftedUnicode % 26 + 26) % 26 + 65
                    } else {
                        shiftedUnicode = (unicode - 97) + shift
                        shiftedUnicode = encrypt ? (shiftedUnicode % 26 + 26) % 26 + 97 : (shiftedUnicode % 26 + 26) % 26 + 97
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
