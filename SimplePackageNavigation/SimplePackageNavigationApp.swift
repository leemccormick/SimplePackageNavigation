import SwiftUI
import TabMicro
import AppConfig

// MARK: - Import Micro Apps
#if MICRO_DEBUG
import MicroApp1
import MicroApp2
import MicroApp3Navigation
import MicroApp4Navigation
import MicroApp5Navigation
import Tab3Navigation
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
        } else if ProcessInfo.processInfo.environment["microapp3"] == "true" {
            MicroApp3NavigationView()
        } else if ProcessInfo.processInfo.environment["microapp4"] == "true" {
            MicroApp4NavigationView()
        } else if ProcessInfo.processInfo.environment["microapp5"] == "true" {
            MicroApp5NavigationView()
        } else if ProcessInfo.processInfo.environment["tab3Navigation"] == "true" {
            Tab3NavigationView()
        } else if ProcessInfo.processInfo.environment["commonUI"] == "true" {
            CommonView1()
        } else {
            ErrorRunMicroAppView()
        }
#else
        BottomTabView()
#endif
    }
}

// MARK: - ErrorRunAppView
struct ErrorRunMicroAppView: View  {
    var body: some View {
        VStack {
            HStack {
                Text("❌ ERROR !")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red.opacity(0.80))
                Spacer()
            }
            
            Text("Something went wrong. Unable to find micro app to run, please ! check enviroment variable.")
                .font(.callout)
        }
        .padding()
        .background(Color.red.opacity(0.20))
        .padding()
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
