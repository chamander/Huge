
final class HugeTests: XCTestCase {

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

final class HugeSpecs: QuickSpec {

  override func spec() {

    describe("Imminent failure") {

      it("fails") {
        let failure: () -> Bool = { false }
        expect(failure()).to(beFalse())
      }

    }

  }

}

import Nimble
import Quick
import XCTest

@testable import Huge
