import MicroApp1
import MicroApp2
import MicroApp3
import MicroApp4
import Tab3Navigation
import SwiftUI

public struct BottomTabView: View {
    public init() {}
    
    var didAppear: ((Self) -> Void)?
    
    public var body: some View {
        TabView {
            MicroApp1NavigationView()
                .tabItem {
                    Label("Tab1", systemImage: "1.lane")
                }
            MicroApp2NavigationView()
                .tabItem {
                    Label("Tab2", systemImage: "2.lane")
                }
            Tab3NavigationView()
                .tabItem {
                    Label("TabNav3", systemImage: "3.circle")
                }
            MicroApp3NavigationView()
                .tabItem {
                    Label("Tab3", systemImage: "3.lane")
                }
            MicroApp4NavigationView()
                .tabItem {
                    Label("Tab4", systemImage: "4.lane")
                }
        }
        .onAppear { self.didAppear?(self) }
    }
}

#Preview {
    BottomTabView()
}
