import MicroApp3
import MicroApp4Navigation
import Navigation
import SwiftUI

public struct Tab3NavigationView: View {
    private let viewModelMicroApp3 = MicroApp3NavigationViewModel.shared
    private let viewModelMicroApp4 = MicroApp4NavigationViewModel.shared
    
    @ObservedObject var navPathWrapper = Tab3Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            Tab3RootView()
                .navigationDestination(for: Tab3Router.MicroApp3Destination.self) { destination in
                    switch destination {
                    case .microApp3view1:
                        viewModelMicroApp3.createView1()
                    case .microApp3view2:
                        viewModelMicroApp3.createView2()
                    }
                }
                .navigationDestination(for: Tab3Router.MicroApp4Destination.self) { destination in
                    switch destination {
                    case .microApp4View1:
                        viewModelMicroApp4.createView1()
                    case .microApp4View2:
                        viewModelMicroApp4.createView2()
                    }
                }
        }
    }
}

#Preview {
    Tab3NavigationView()
}
