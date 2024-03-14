import Foundation
import Navigation

class View2ViewModel: ObservableObject {
    private let tab3Router = Tab3Router.shared
    
    func goBackButtonTapped() {
        tab3Router.navigateBack()
    }
    
    func popToRootButtonTapped() {
        tab3Router.navigateToRoot()
    }
    
    func goToMicroApp5Tapped() {
        tab3Router.navigateMicroApp5Destination(to: .microApp5View1)
    }
}
