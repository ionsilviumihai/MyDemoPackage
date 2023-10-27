import XCTest
@testable import MyDemoPackage

final class MyDemoPackageTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyDemoPackage(text: "Hello, World!").saySomething(), "MyDemoPackage: Hello, World!")
    }
}
