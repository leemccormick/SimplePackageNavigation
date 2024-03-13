import CommonUI
import SwiftUI

public struct View2: View {
    private var viewModel = View2ViewModel()
    public init() {}
    public var body: some View {
        VStack {
            Text("Micro App 4")
            Text("View 2")
            Button("GO BACK") {
                viewModel.goBackButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
            
            Button("Pop To Root") {
                viewModel.popToRootButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: false))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.brown.opacity(0.25)
        }
    }
}

#Preview {
    View2()
}
