import SwiftUI
import Navigation

public struct MicroApp4NavigationView: View {
    var viewModel = MicroApp4NavigationViewModel()
    @StateObject var navPathWrapper = Tab3Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            View1()
                .navigationDestination(for: Tab3Router.MicroApp4Destination.self) { destination in
                    switch destination {
                    case .microApp4View1:
                        viewModel.createView1()
                    case .microApp4View2:
                        viewModel.createView2()
                    }
                }
        }
    }
}

#Preview {
    MicroApp4NavigationView()
}
