import XCTest
@testable import Strong_Reference_Cycle

class Strong_Reference_CycleTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Strong_Reference_Cycle().text, "Hello, World!")
    }


    static var allTests : [(String, (Strong_Reference_CycleTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
