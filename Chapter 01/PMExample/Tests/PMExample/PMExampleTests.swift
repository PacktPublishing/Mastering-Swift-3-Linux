import XCTest
@testable import PMExample

class PMExampleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(PMExample().text, "Hello, World!")
    }


    static var allTests : [(String, (PMExampleTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
