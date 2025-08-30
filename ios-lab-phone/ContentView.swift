import SwiftUI

struct ContentView: View {
    @State var sheetIsPresented: Bool = false
    var body: some View {
        NavigationStack{
            TabBar(){
                sheetIsPresented.toggle()
                return sheetIsPresented
            }
            .navigationTitle("Aula 30 de agosto")
        }
        .sheet(
            isPresented: $sheetIsPresented,
            content: {FavoriteScreen()}
        )
    }
}

#Preview {
    ContentView()
}
