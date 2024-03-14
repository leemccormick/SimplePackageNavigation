import SwiftUI
import TabMicro
import AppConfig

// MARK: - Import Micro Apps
#if MICRO_DEBUG
import MicroApp1
import MicroApp2
import FeatureView
#endif

// MARK: - App
@main
struct SimplePackageNavigationApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentViewBasedOnConfiguration()
                .onAppear {
                    print("-------------------------- In Main App  --------------------------")
                    print("✅ AppBuildConfiguration: \(AppBuildConfiguration.shared.environment)")
                    print("🌍 AppBuildConfiguration BaseURL: \(AppBuildConfiguration.shared.baseURL)")
                    print("-------------------------------------------------------------------")
                }
        }
    }
}

// MARK: - ContentView Based on Enviroment
struct ContentViewBasedOnConfiguration: View  {
    var body: some View {
#if MICRO_DEBUG
        if ProcessInfo.processInfo.environment["microApp1"] == "true" {
            MicroApp1NavigationView()
        } else if ProcessInfo.processInfo.environment["microApp2"] == "true" {
            MicroApp2NavigationView()
        } else if ProcessInfo.processInfo.environment["commonUI"] == "true" {
            CommonView1()
        } else {
            EmptyView()
        }
#else
        BottomTabView()
#endif
    }
}

// MARK: - Environment Example

//#if MICRO_DEBUG
//print("✅MICRO_DEBUG")
//#elseif DEV_DEBUG
//print("✅DEV_DEBUG")
//#elseif STAG_DEBUG
//print("✅STAG_DEBUG")
//#elseif PROD_DEBUG
//print("✅PROD_DEBUG")
//#endif
