import Foundation

public class Tab3Router: ObservableObject {
    public static let shared: Tab3Router = .init()
    
    public enum MicroApp3Destination: Codable, Hashable {
        case  microApp3view1
        case  microApp3view2
    }
    
    public enum MicroApp4Destination: Codable, Hashable {
        case microApp4View1
        case microApp4View2
    }
    
    public enum MicroApp5Destination: Codable, Hashable {
        case microApp5View1
        case microApp5View2
        case microApp5View3
    }
    
    @Published public var navPathWrapper = NavigationPathWrapper()
    
    public init() {}
    
    public func navigateMicroApp3Destination(to destination: MicroApp3Destination) {
        navPathWrapper.appendToNavPath(destination)
    }
    
    public func navigateMicroApp4Destination(to destination: MicroApp4Destination) {
        navPathWrapper.appendToNavPath(destination)
    }
    
    public func navigateMicroApp5Destination(to destination: MicroApp5Destination) {
        navPathWrapper.appendToNavPath(destination)
    }
    
    public func navigateBack() {
        navPathWrapper.navigateBack()
    }
    
    public func navigateToRoot() {
        navPathWrapper.navigateToRoot()
    }
}
