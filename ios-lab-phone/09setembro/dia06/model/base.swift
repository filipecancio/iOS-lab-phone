let pikachu = User(username: "pikachu_oficial", fullName: "Pikachu Elétrico", profilePictureUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png")
let snorlax = User(username: "snorlax_dorminhoco", fullName: "Snorlax Gigante", profilePictureUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png")
let charizard = User(username: "charizard_fogo", fullName: "Charizard Chama", profilePictureUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png")
let bulbasaur = User(username: "bulbasaur_planta", fullName: "Bulbasaur Semente", profilePictureUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png")
let squirtle = User(username: "squirtle_agua", fullName: "Squirtle Tartaruga", profilePictureUrl: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png")

// Criando os posts
let post1 = Post(
    photoUrl: "https://www.ptcgic-cr.com/2024/wp-content/uploads/2021/07/7647-20240131092338-f15da123-bb45-4dfe-bcae-f2546548be29.jpg",
    caption: "Acabei de encontrar meu treinador. ⚡️ Bora pra mais uma aventura!",
    likes: 1250,
    comments: [
        Comment(text: "Pika Pika!", likes: 15, author: pikachu),
        Comment(text: "Que fofinho! ❤️", likes: 20, author: bulbasaur)
    ],
    author: pikachu
)

let post2 = Post(
    photoUrl: "https://cdnb.artstation.com/p/assets/images/images/017/212/409/large/sara-garet-cdc-pokemon.jpg?1619174448",
    caption: "Hora da soneca. Não me acordem! 😴",
    likes: 580,
    comments: [
        Comment(text: "Aproveite o sono da beleza! 😂", likes: 5, author: squirtle),
        Comment(text: "Zzzzz...", likes: 2, author: snorlax)
    ],
    author: snorlax
)

let post3 = Post(
    photoUrl: "https://wallpapers.com/images/hd/pokemon-charizard-0hylui7g78smac7y.jpg",
    caption: "Voo de rotina. O céu é meu lugar! 🔥",
    likes: 2100,
    comments: [
        Comment(text: "Que incrível! Voei com você hoje. 🐉", likes: 50, author: charizard),
        Comment(text: "Uau, que foto! 🤩", likes: 30, author: pikachu)
    ],
    author: charizard
)

// Imprimindo os dados dos posts
let users: [User] = [pikachu, bulbasaur, squirtle, snorlax, charizard]
let posts: [Post] = [post1, post2, post3]
