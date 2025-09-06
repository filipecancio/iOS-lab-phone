import Foundation

struct User {
    let id: UUID
    let username: String
    let fullName: String
    let profilePictureUrl: String
    
    init(username: String, fullName: String, profilePictureUrl: String) {
        self.id = UUID()
        self.username = username
        self.fullName = fullName
        self.profilePictureUrl = profilePictureUrl
    }
    
    func toUrl() -> URL {
        URL(string: profilePictureUrl)!
    }
}
