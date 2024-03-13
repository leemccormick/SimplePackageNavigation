import CommonUI
import SwiftUI

public struct View3: View {
    private let viewModel = View3ViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack {
            TitleView(viewNoText: "3")
            
            Button("GO BACK") {
                viewModel.goBackButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: true))
            
            Button("POP TO ROOT") {
                viewModel.popToRootButtonTapped()
            }
            .buttonStyle(GreenButton(isEnabled: false))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.pink.opacity(0.50)
        }
    }
}

#Preview {
    View3()
}
