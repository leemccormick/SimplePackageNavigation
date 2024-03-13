import SwiftUI
import CommonUI

struct Tab3RootView: View {
    private let viewModel = Tab3RootViewModel()
    
    var body: some View {
        VStack {
            Text("Tab 3 Root View")
                .font(.largeTitle)
            
            Button("GO TO Micro App 3") {
                viewModel.goToMicroApp3()
            }
            .buttonStyle(LightGreenButton())
            
            Button("GO TO Micro App 4") {
                viewModel.goToMicroApp4()
            }
            .buttonStyle(LightGreenButton())
            
            Button("GO TO Micro App 5") {
                viewModel.goToMicroApp5()
            }
            .buttonStyle(LightGreenButton())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.yellow.opacity(0.75)
        }
    }
}

#Preview {
    Tab3RootView()
}
