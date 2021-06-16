//
//  nymbus_assessentTests.swift
//  nymbus-assessentTests
//
//  Created by Erick Pac on 16/06/21.
//

import XCTest
@testable import nymbus_assessent

class nymbus_assessentTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testRequest() throws {
        // given
        let apiManager = Injections.shared.apiManager
        let endpoint = APIConstants.repos.value
        
        // when
        apiManager.performRequest(to: endpoint) { (response: [Repo]?) in
            // then
            XCTAssertNotNil(response)
        } failure: { error in
            // then
            XCTFail("Error: \(error?.localizedDescription ?? "")")
        }
    }

}
