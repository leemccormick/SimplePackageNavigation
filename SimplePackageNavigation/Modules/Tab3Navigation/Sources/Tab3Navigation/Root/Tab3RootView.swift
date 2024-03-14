import SwiftUI
import CommonUI

//MARK: - MicroAppDemoButton
struct MicroAppDemoButton: View {
    let buttonTitle: String
    let description: String
    let action: () -> Void
    
    var body: some View {
        VStack {
            Button(buttonTitle) {
                action()
            }
            .buttonStyle(LightGreenButton())
            
            Text(description)
                .font(.callout)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .border(Color.brown)
        .cornerRadius(10)
        .padding()
    }
}

//MARK: - Tab3RootView
struct Tab3RootView: View {
    private let viewModel = Tab3RootViewModel()
    
    var body: some View {
        VStack {
            Text("Tab 3 Root View")
                .font(.largeTitle)
            
            Text("Demo Navigation Between Micro Apps")
                .font(.callout)
            
            MicroAppDemoButton(
                buttonTitle: "GO TO Micro App 3",
                description: "MicroApp 3 -> MicroApp 4 -> MicroApp 5"
            ) {
                viewModel.goToMicroApp3()
            }
            
            MicroAppDemoButton(
                buttonTitle: "GO TO Micro App 4",
                description: "Micro App 4 --> Micro App 5"
            ) {
                viewModel.goToMicroApp4()
            }
            
            MicroAppDemoButton(
                buttonTitle: "GO TO Micro App 5",
                description: "Micro App 5"
            ) {
                viewModel.goToMicroApp5()
            }
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
