import SwiftUI

struct HomeSreen: View {
    
    let onClick: () -> Bool
    @State var isEnabled: Bool = false
    
    init(onClick: @escaping () -> Bool = {false}) {
        self.onClick = onClick
    }
    
    var body: some View {
        ZStack {
            if (isEnabled) {Color.green} else {Color.red}
            Button {isEnabled = onClick()} label: {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("voltar")
                }
            }
        }
        
    }
    
}

#Preview {
    HomeSreen()
}
