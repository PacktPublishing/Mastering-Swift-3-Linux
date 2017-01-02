import XCTest
@testable import pcapProject

class pcapProjectTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(pcapProject().text, "Hello, World!")
    }


    static var allTests : [(String, (pcapProjectTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
