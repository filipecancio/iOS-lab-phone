import SwiftUI

#Preview {
    SportScreen()
}


struct Sport {
    let id: UUID
    let name: String
    let iconUrl: String
    
    init(name: String, iconUrl: String = "chevron.right") {
        self.name = name
        self.iconUrl = iconUrl
        self.id = UUID()
    }
}

struct SportItem: View {
    let sport: Sport
    
    init(sport: Sport) {
        self.sport = sport
    }
    
    var body: some View {
        HStack{
            Image(
                systemName: sport.iconUrl
            )
            Text(sport.name)
        }
    }
}

struct SportScreen: View{
    let sportList:[Sport] = [
        Sport(name: "futebol", iconUrl: "football.fill"),
        Sport(name: "baseball", iconUrl: "basketball.fill"),
        Sport(name: "basquete", iconUrl: "baseball.fill")
    ]
    let sportList2:[Sport] = [
        Sport(name: "Volei", iconUrl: "volleyball.fill"),
        Sport(name: "Natação", iconUrl: "figure.pool.swim"),
        Sport(name: "basquete", iconUrl: "baseball.fill")
    ]
    
    var body: some View {
        VStack{
            List{
                Section(
                    "Esportes"
                ){
                    ForEach(sportList, id: \.name){item in
                        SportItem(sport: item)
                    }
                }
                Section(
                    "Esportes"
                ){
                    ForEach(sportList2, id: \.name){item in
                        SportItem(sport: item)
                    }
                }
                
            }
        }
    }
}
