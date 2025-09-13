import Foundation

class StartController: ObservableObject{
    @Published var state: StartState = StartState(pokelist: pokeList)
    
    func incrementNum(id: UUID){
        let position = state.pokelist.firstIndex(where: {$0.id == id}) ?? -1
        if position >= 0 {state.pokelist[position].favorite = !state.pokelist[position].favorite}
    }
}

struct StartState{
    var pokelist: [Pokemon]
}

struct Pokemon: Identifiable {
    let id: UUID
    let name: String
    let imgUrl: String
    var favorite: Bool
    
    init(name: String, imgUrl: String, favorite: Bool) {
        self.id = UUID()
        self.name = name
        self.imgUrl = imgUrl
        self.favorite = favorite
    }
}

let pokeList = [
    Pokemon(name: "Bulbasaur", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/1.gif", favorite: false),
    Pokemon(name: "Charmander", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/4.gif", favorite: true),
    Pokemon(name: "Squirtle", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/7.gif", favorite: false),
    Pokemon(name: "Pikachu", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/25.gif", favorite: true),
    Pokemon(name: "Jigglypuff", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/39.gif", favorite: false),
    Pokemon(name: "Meowth", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/52.gif", favorite: false),
    Pokemon(name: "Psyduck", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/54.gif", favorite: false),
    Pokemon(name: "Machop", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/66.gif", favorite: false),
    Pokemon(name: "Eevee", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/133.gif", favorite: true),
    Pokemon(name: "Snorlax", imgUrl: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/showdown/143.gif", favorite: false)
]
