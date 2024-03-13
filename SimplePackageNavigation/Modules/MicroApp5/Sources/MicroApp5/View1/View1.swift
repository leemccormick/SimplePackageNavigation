import CommonUI
import SwiftUI

public struct View1: View {
    private let viewModel = View1ViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack {
            TitleView(viewNoText: "1")
            
            Button("GO TO MicroApp 5 : View 2") {
                viewModel.goToView2Tapped()
            }
            .buttonStyle(LightGreenButton())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.pink.opacity(0.90)
        }
    }
}

#Preview {
    View1()
}
