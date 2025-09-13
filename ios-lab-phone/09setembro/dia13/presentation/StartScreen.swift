import SwiftUI


struct StartScreen: View {
    @EnvironmentObject var controller: StartController

    var body: some View {
        VStack{
            List(controller.state.pokelist){ poke in
                HStack{
                    AsyncImage(url: URL(string: "\(poke.imgUrl)")) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    } placeholder: {Text("loading")}
                    Text("\(poke.name)")
                        .fontWeight(.bold)
                    Spacer()
                    Button{
                        controller.incrementNum(id: poke.id)
                    }label: {
                        let image = if poke.favorite {"heart.fill"} else {"heart"}
                        Image(systemName: image).foregroundColor(.pink)
                    }
                }
            }
        }
    }
}

#Preview {
    StartScreen()
        .environmentObject(StartController())
}
