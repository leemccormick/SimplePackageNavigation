import MicroApp4
import Navigation
import SwiftUI

public struct MicroApp3NavigationView: View {
    private let viewModelMicroApp3 = MicroApp3NavigationViewModel()
    private let viewModelMicroApp4 = MicroApp4NavigationViewModel.shared
    
    @ObservedObject var navPathWrapper = Tab3Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            View1()
                .navigationDestination(for: Tab3Router.MicroApp3Destination.self) { destination in
                    switch destination {
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
    MicroApp3NavigationView()
}
