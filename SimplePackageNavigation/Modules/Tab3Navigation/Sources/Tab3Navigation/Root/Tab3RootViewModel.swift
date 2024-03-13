import Foundation
import Navigation

class Tab3RootViewModel: ObservableObject {
    private let tab3Router = Tab3Router.shared

    func goToMicroApp3() {
        tab3Router.navigateMicroApp3Destination(to: .microApp3view1)
    }
    
    func goToMicroApp4() {
        tab3Router.navigateMicroApp4Destination(to: .microApp4View1)
    }
}
