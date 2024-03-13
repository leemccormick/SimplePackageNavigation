import Foundation
import Navigation

class View1ViewModel: ObservableObject {
    private let tab3Router = Tab3Router.shared
    
    func goToView2Tapped() {
        tab3Router.navigateMicroApp5Destination(to: .microApp5View2)
    }
}
