import SwiftUI

#Preview {
    EmployeeScreen()
}

struct EmployeeDetailScreen: View {
    
    let employee: Employee
    
    init(_ employee: Employee) {
        self.employee = employee
    }
    
    var body: some View {
        Text("Hello, \(employee)")
    }
}

struct EmployeeScreen: View {
    var body: some View {
        let employeeList = [
            Employee(name: "Paulo",age: 4),
            Employee(name: "Rafael",age: 10),
            Employee(name: "Lucas",age: 15),
        ]
        
        List(employeeList, id: \.id) {item in
            EmployeeCard(item)
        }
    }
}


struct EmployeeCard: View {
    
    let employee: Employee
    let onClick: () -> Void
    
    init(_ employee: Employee, _ onClick: @escaping ()-> Void = {}) {
        self.employee = employee
        self.onClick = onClick
    }
    
    var body: some View {
        NavigationLink{
            EmployeeDetailScreen(employee)
        } label: {
            VStack{
                Text("\(employee.name), \(employee.age)")
            }
        }
        .padding()
        .background(Color.gray.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct Employee {
    let id: UUID
    let name: String
    let age: Int
    
    init(name: String = "Paulo", age: Int = 4) {
        self.name = name
        self.age = age
        self.id = UUID()
    }
}
