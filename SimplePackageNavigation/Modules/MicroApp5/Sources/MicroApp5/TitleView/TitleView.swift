import SwiftUI

struct TitleView: View {
    let viewNoText: String
    
    init(viewNoText: String) {
        self.viewNoText = viewNoText
    }
    
    var body: some View {
        VStack {
            Text("Micro App 5")
                .font(.largeTitle)
            
            Text("View : \(viewNoText)")
                .font(.title)
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color.gray.opacity(0.75))
        .cornerRadius(10)
        .border(Color.gray)
        .padding()
    }
}

#Preview {
    TitleView(viewNoText: "2")
}
