import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            EmployeeScreen()
            .navigationTitle("Employees")
        }
    }
}

#Preview {
    ContentView()
}
