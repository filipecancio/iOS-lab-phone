import SwiftUI

struct PostDetailScreen: View {
    
    @Binding var post: Post
    
    var body: some View {
        VStack{
            PostItem(post: $post)
            List{
                ForEach(post.comments){comment in
                    CommentItem(comment: comment)
                }
            }
        }
    }
}
