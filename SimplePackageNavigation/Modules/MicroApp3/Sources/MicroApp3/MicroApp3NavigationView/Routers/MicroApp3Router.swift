import Navigation
import SwiftUI

class MicroApp3Router: ObservableObject {
    static let shared: MicroApp3Router = .init()
    
    enum Destination: Codable, Hashable {
        case view2
    }
    
    @Published  var navPathWrapper = NavigationPathWrapper()
    
    func navigate(to destination: Destination) {
        navPathWrapper.appendToNavPath(destination)
    }
    
    func navigateBack() {
        navPathWrapper.navigateBack()
    }
    
    func navigateToRoot() {
        navPathWrapper.navigateToRoot()
    }
}
