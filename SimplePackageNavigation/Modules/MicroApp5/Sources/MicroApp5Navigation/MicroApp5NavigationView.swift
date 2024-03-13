import SwiftUI
import Navigation

public struct MicroApp5NavigationView: View {
    var viewModel = MicroApp5NavigationViewModel()
    @StateObject var navPathWrapper = Tab3Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            viewModel.createView1()
                .navigationDestination(for: Tab3Router.MicroApp5Destination.self) { destination in
                    switch destination {
                    case .microApp5View1:
                        viewModel.createView1()
                    case .microApp5View2:
                        viewModel.createView2()
                    case .microApp5View3:
                        viewModel.createView3()
                    }
                }
        }
    }
}

#Preview {
    MicroApp5NavigationView()
}
