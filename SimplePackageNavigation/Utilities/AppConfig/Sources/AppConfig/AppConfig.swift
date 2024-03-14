import Foundation

// MARK: - Environment
public enum AppEnvironment: String {
    case debugMicro = "Debug Micro"
    case releaseMicro = "Release Micro"
    
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"
    
    case debugStaging = "Debug Staging"
    case releaseStaging = "Release Staging"
    
    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

// MARK: - BuildConfiguration
public class AppBuildConfiguration {
    public static let shared = AppBuildConfiguration()
    
    public var environment: AppEnvironment
    
    public init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        
        environment = AppEnvironment(rawValue: currentConfiguration)!
    }
    
    public var baseURL: String {
        switch environment {
        case .debugMicro, .releaseMicro:
            return "https://micro.example.com/api"
        case .debugDevelopment, .releaseDevelopment:
            return "https://dev.example.com/api"
        case .debugStaging, .releaseStaging:
            return "https://staging.example.com/api"
        case .debugProduction, .releaseProduction:
            return "https://example.com/api"
        }
    }
}
