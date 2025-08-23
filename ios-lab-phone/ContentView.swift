import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            SportScreen()
            .navigationTitle("Employees")
        }
    }
}

#Preview {
    ContentView()
}
