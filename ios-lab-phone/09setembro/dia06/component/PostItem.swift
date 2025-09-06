import SwiftUI

struct PostItem: View {
    
    @Binding var post: Post
    
    var body: some View {
        VStack{
            PostHeader(
                avatar: post.author.toUrl(),
                username: post.author.username
            )
            AsyncImage(url: post.toUrl()){ image in
                image.image?.resizable().aspectRatio(contentMode: .fill).frame(height: 200)
            }
            PostFooter(
                likes: post.likes,
                comments: post.comments.count,
                saves: 0
            )
            Text(post.caption)
        }.padding(.bottom, 20)
    }
}

struct PostHeader: View {
    let avatar: URL
    let username: String
    
    var body: some View {
        HStack{
            AsyncImage(url: avatar){ image in
                image.image?.resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50)
            }
            Spacer()
            Text(username)
        }.padding(.bottom, 20)
    }
}

struct PostFooter: View {
    let likes: Int
    let comments: Int
    let saves: Int
    
    var body: some View {
        HStack{
            Image(
                systemName: "heart"
            ).frame(width: 20, height: 20)
            Text("\(likes)")
            Image(
                systemName: "message"
            ).frame(width: 20, height: 20)
            Text("\(likes)")
            Image(
                systemName: "bookmark"
            ).frame(width: 20, height: 20)
            Text("\(saves)")
            Spacer()
            
        }.padding(.vertical, 20)
    }
}
