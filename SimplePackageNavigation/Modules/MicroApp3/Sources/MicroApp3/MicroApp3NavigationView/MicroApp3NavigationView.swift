import SwiftUI

public struct MicroApp3NavigationView: View {
    var viewModel = MicroApp3NavigationViewModel()
    @ObservedObject var navPathWrapper = MicroApp3Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            View1()
                .navigationDestination(for: MicroApp3Router.Destination.self) { destination in
                    switch destination {
                    case .view2:
                        viewModel.createView2()
                    }
                }
        }
    }
}

#Preview {
    MicroApp3NavigationView()
}
