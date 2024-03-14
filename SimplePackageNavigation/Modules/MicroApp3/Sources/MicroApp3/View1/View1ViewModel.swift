import Foundation
import Navigation

class View1ViewModel: ObservableObject {
    private let tab3Router = Tab3Router.shared
    
    func goToView2ButtonTapped() {
        tab3Router.navigateMicroApp3Destination(to: .microApp3view2)
    }
    
    func goToMicroApp4() {
        tab3Router.navigateMicroApp4Destination(to: .microApp4View1)
    }
}
