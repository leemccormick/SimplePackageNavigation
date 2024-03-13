import Navigation
import SwiftUI

public struct MicroApp3NavigationView: View {
    private let viewModelMicroApp3 = MicroApp3NavigationViewModel()
    
    @ObservedObject var navPathWrapper = Tab3Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            viewModelMicroApp3.createView1()
                .navigationDestination(for: Tab3Router.MicroApp3Destination.self) { destination in
                    switch destination {
                    case .microApp3view1:
                        viewModelMicroApp3.createView1()
                    case .microApp3view2:
                        viewModelMicroApp3.createView2()
                    }
                }
        }
    }
}

#Preview {
    MicroApp3NavigationView()
}
