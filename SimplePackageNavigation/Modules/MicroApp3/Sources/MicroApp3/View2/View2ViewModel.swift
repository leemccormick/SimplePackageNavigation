import Foundation
import Navigation

class View2ViewModel: ObservableObject {
    private let tab3Router = Tab3Router.shared
    
    func goBackButtonTapped() {
        tab3Router.navigateBack()
    }
    
    func goToMicroApp4ButtonTapped() {
        tab3Router.navigateMicroApp4Destination(to: .microApp4View1)
    }
}
