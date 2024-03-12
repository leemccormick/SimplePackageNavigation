import Foundation
import Navigation

class View1ViewModel: ObservableObject {
    var microApp3Router = MicroApp3Router.shared
    
    func goToView2ButtonTapped() {
        microApp3Router.navigate(to: .view2)
    }
}
