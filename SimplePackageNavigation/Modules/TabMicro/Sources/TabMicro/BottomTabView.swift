import MicroApp1
import MicroApp2
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
                    Label("Tab3", systemImage: "3.lane")
                }
        }
        .onAppear { self.didAppear?(self) }
    }
}

#Preview {
    BottomTabView()
}
