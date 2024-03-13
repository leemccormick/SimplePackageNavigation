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
}
