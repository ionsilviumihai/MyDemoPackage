import XCTest
@testable import MyDemoPackage

final class MyDemoPackageTests: XCTestCase {
    
    func testEncryption() {
        let package = MyDemoPackage()
        let message = "Hello, World!"
        let encryptedMessage = package.caesarCipher(message: message, shift: 3, encrypt: true)
        XCTAssertEqual(encryptedMessage, "Khoor, Zruog!")
    }

    func testDecryption() {
        let package = MyDemoPackage()
        let message = "Khoor, Zruog!"
        let decryptedMessage = package.caesarCipher(message: message, shift: 3, encrypt: false)
        XCTAssertEqual(decryptedMessage, "Hello, World!")
    }
    
    func testEmptyMessage() {
        let package = MyDemoPackage()
        let message = ""
        let encryptedMessage = package.caesarCipher(message: message, shift: 3, encrypt: true)
        XCTAssertEqual(encryptedMessage, "")
    }
    
    func testNoShift() {
        let package = MyDemoPackage()
        let message = "Hello, World!"
        let encryptedMessage = package.caesarCipher(message: message, shift: 0, encrypt: true)
        XCTAssertEqual(encryptedMessage, message)
    }
    
    static var allTests = [
        ("testEncryption", testEncryption),
        ("testDecryption", testDecryption),
        ("testEmptyMessage", testEmptyMessage),
        ("testNoShift", testNoShift),
    ]
} 
