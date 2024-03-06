import SwiftUI
import TabMicro

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
