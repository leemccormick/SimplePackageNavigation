import Foundation
import Navigation

class View2ViewModel: ObservableObject {
    private let tab3Router = Tab3Router.shared
    
    func goToView3Tapped() {
        tab3Router.navigateMicroApp5Destination(to: .microApp5View3)
    }
}
