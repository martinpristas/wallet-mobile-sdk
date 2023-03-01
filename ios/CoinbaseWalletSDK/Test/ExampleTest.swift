//
//  ExampleTest.swift
//  MobileWalletProtocol-Unit-Test
//
//  Created by Jungho Bang on 10/7/22.
//

import XCTest
@testable import CoinbaseWalletSDK

@available(iOS 13.0, *)
class ExampleTest: XCTestCase {

    func testMWPClientConfigure() {
        XCTAssertFalse(ClientConfiguration.isConfigured)

        MWPClient.configure(callback: URL(string: "myappxyz://mycallback")!)
        XCTAssertTrue(ClientConfiguration.isConfigured)
    }

}
