import Foundation
import Navigation

class View2ViewModel: ObservableObject {
    var microApp3Router = MicroApp3Router.shared

    func goBackButtonTapped() {
        microApp3Router.navigateBack()
    }
}
