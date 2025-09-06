import SwiftUI

struct CommentItem: View {
    let comment: Comment
    
    var body: some View {
        HStack{
            AsyncImage(url: comment.author.toUrl()){ image in
                image.image?.resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50)
            }.padding(.leading,20)
            Text(comment.text)
            Spacer()
            VStack{
                Image(
                    systemName: "heart"
                ).frame(width: 5)
                Text("\(comment.likes)").font(.footnote)
            }
        }
    }
}

#Preview {
    CommentItem(comment: post1.comments[0])
}
