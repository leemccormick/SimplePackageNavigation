import MicroApp3Navigation
import MicroApp4Navigation
import MicroApp5Navigation
import Navigation
import SwiftUI

public struct Tab3NavigationView: View {
    private let viewModelMicroApp3 = MicroApp3NavigationViewModel.shared
    private let viewModelMicroApp4 = MicroApp4NavigationViewModel.shared
    private let viewModelMicroApp5 = MicroApp5NavigationViewModel.shared
    
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
                .navigationDestination(for: Tab3Router.MicroApp5Destination.self) { destination in
                    switch destination {
                    case .microApp5View1:
                        viewModelMicroApp5.createView1()
                    case .microApp5View2:
                        viewModelMicroApp5.createView2()
                    case .microApp5View3:
                        viewModelMicroApp5.createView3()
                    }
                }
        }
    }
}

#Preview {
    Tab3NavigationView()
}