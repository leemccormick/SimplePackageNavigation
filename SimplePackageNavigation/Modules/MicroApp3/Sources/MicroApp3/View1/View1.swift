import SwiftUI
import CommonUI

struct View1: View {
    var viewModel = View1ViewModel()

    var body: some View {
        VStack {
            Text("Micro App 3")
            Text("View 1")
            
            Button("GO TO Micro App 3 : View2") {
                viewModel.goToView2ButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
            
            Button("GO TO Micro App 4") {
                viewModel.goToMicroApp4()
            }
            .buttonStyle(LightGreenButton())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.purple.opacity(0.50)
        }
    }
}

#Preview {
    View1()
}
