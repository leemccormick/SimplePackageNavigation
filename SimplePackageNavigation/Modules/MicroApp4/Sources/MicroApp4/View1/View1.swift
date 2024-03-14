import SwiftUI

public struct View1: View {
    private var viewModel = View1ViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Micro App 4")
            Text("View 1")
            Button("GO TO View2") {
                viewModel.goToView2ButtonTapped()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.cyan.opacity(0.70)
        }
    }
}

#Preview {
    View1()
}
