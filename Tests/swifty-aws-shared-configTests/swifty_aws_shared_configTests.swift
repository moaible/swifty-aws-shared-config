import XCTest
@testable import swifty_aws_shared_config

#if os(Windows)
let homeDirectory = ProcessInfo.processInfo.environment["USERPROFILE"]!
#else
let homeDirectory = ProcessInfo.processInfo.environment["HOME"]!
#endif

final class swifty_aws_shared_configTests: XCTestCase {

    func testConfigFilename() {
        XCTAssertEqual(SharedConfig.configFilename, "\(homeDirectory)/.aws/config")
    }
    
    func testCredentialsFilename() {
        XCTAssertEqual(SharedConfig.credentialsFilename, "\(homeDirectory)/.aws/credentials")
    }

    static var allTests = [
        ("testConfigFilename", testConfigFilename),
        ("testCredentialsFilename", testCredentialsFilename),
    ]
}
