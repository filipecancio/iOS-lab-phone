import SwiftUI

struct Desafio5 : View {
    
    let name: String
    let subtitle: String
    let systemName: String
    
    init(
        name: String = "Seu nome",
        subtitle: String = "Subtitulo de sua rescolha",
        systemName: String = "chevron.right"
    ) {
        self.name = name
        self.subtitle = subtitle
        self.systemName = systemName
    }
    
    var body: some View {
        VStack {
            ZStack {
                HStack{
                    VStack(
                        alignment: .leading
                    ){
                        Text(name)
                        Text(subtitle)
                    }
                    Spacer()
                    Image(systemName: systemName)
                        .foregroundColor(.blue)
                        .bold()
                }
                .padding()
            }
            .background(.gray.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .frame(height: 100)
        .padding()
    }
}
