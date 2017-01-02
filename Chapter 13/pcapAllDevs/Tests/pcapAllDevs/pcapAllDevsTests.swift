import XCTest
@testable import pcapAllDevs

class pcapAllDevsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(pcapAllDevs().text, "Hello, World!")
    }


    static var allTests : [(String, (pcapAllDevsTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
