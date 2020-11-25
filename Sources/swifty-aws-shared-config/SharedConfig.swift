import Foundation

public struct SharedConfig {

    public static var configFilename: String {
        return "\(userHome)/.aws/config"
    }
    
    public static var credentialsFilename: String {
        return "\(userHome)/.aws/credentials"
    }

    public static var userHome: String {
        #if os(Windows)
        return ProcessInfo.processInfo.environment["USERPROFILE"]!
        #else
        return ProcessInfo.processInfo.environment["HOME"]!
        #endif
    }

    public static func readAWSConfig() throws -> String {
        let fileURL = URL(fileURLWithPath: SharedConfig.configFilename)
        return try String.init(contentsOf: fileURL)
    }
    
    public static func readAWSCredentials() throws -> String {
        let fileURL = URL(fileURLWithPath: SharedConfig.credentialsFilename)
        return try String.init(contentsOf: fileURL)
    }
}
