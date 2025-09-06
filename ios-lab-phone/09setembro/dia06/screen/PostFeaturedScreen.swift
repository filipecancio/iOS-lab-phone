import SwiftUI

struct PostFeaturedScreen: View {
    @State var postState : [Post]
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach($postState){  post in
                        NavigationLink{
                            PostDetailScreen(post: post)
                        }label: {
                            PostItem(post: post)
                        
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    PostFeaturedScreen(postState: posts)
}

