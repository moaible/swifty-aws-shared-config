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
}
