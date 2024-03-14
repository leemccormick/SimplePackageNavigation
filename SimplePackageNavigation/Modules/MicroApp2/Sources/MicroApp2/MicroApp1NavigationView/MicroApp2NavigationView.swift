import SwiftUI
import AppConfig

public struct MicroApp2NavigationView: View {
    var viewModel = MicroApp2NavigationViewModel()
    @ObservedObject var navPathWrapper = MicroApp2Router.shared.navPathWrapper
    
    public init() {}
    
    public var body: some View {
        NavigationStack(path: $navPathWrapper.navPath) {
            View1()
                .navigationDestination(for: MicroApp2Router.Destination.self) { destination in
                    switch destination {
                    case .view2:
                        viewModel.createView2()
                    }
                }
                .onAppear {
                    print("-------------------------- In MicroApp 2 --------------------------")
                    print("✅ AppBuildConfiguration: \(AppBuildConfiguration.shared.environment)")
                    print("🌍 AppBuildConfiguration BaseURL: \(AppBuildConfiguration.shared.baseURL)")
                    print("-------------------------------------------------------------------")
                }
        }
    }
}

#Preview {
    MicroApp2NavigationView()
}
