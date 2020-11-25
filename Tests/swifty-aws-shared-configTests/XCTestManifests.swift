import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(swifty_aws_shared_configTests.allTests),
    ]
}
#endif
