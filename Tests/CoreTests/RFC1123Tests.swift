import Foundation
import XCTest
@testable import Core

class RFC1123Tests: XCTestCase {

    static var allTests = [
        ("testBasic", testBasic)
    ]

    func testBasic() {
        let date = Date(rfc1123: "Sun, 21 Aug 2016 20:07:31 GMT")
        XCTAssertEqual(date?.rfc1123, "Sun, 21 Aug 2016 20:07:31 GMT")
    }

    func testFail() {
        let date = Date(rfc1123: "Ferret")
        XCTAssertNil(date)
    }
}
