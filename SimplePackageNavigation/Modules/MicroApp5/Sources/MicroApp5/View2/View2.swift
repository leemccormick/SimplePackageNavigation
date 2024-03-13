import CommonUI
import SwiftUI

public struct View2: View {
    private let viewModel = View2ViewModel()
    
    public init() {}
    
    public var body: some View {
        VStack {
            TitleView(viewNoText: "2")
            
            Button("GO TO MicroApp 5 : View 3") {
                viewModel.goToView3Tapped()
            }
            .buttonStyle(LightGreenButton())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.pink.opacity(0.70)
        }
    }
}

#Preview {
    View2()
}
