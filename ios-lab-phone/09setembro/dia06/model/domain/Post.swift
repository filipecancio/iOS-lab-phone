import Foundation

struct Post: Identifiable {
    let id: UUID
    let photoUrl: String
    let caption: String
    let likes: Int
    let comments: [Comment]
    let author: User
    
    init (
        photoUrl: String,
        caption: String,
        likes: Int,
        comments: [Comment],
        author: User
    ){
        self.id = UUID()
        self.author = author
        self.likes = likes
        self.comments = comments
        self.caption = caption
        self.photoUrl = photoUrl
    }
    
    func toUrl() -> URL {
        return URL(string: photoUrl)!
    }
}

struct Comment: Identifiable {
    let id: UUID
    let text: String
    let likes: Int
    let author: User
    
    init(text: String, likes: Int, author: User){
        self.id = UUID()
        self.text = text
        self.likes = likes
        self.author = author
    }
}
