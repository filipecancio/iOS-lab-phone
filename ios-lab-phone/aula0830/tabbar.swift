import SwiftUI

struct TabBar: View {
    
    let onClick: () -> Bool
    
    init(onClick: @escaping () -> Bool = {false}) {
        self.onClick = onClick
    }
    
    var body: some View {
        TabView {
            HomeSreen(){onClick()}
                .tabItem {
                    Image(systemName: "house")
                }
            FavoriteScreen()
                .tabItem {
                    Image(systemName: "star")
                }
            AboutScreen()
                .tabItem {
                    Image(systemName: "info.circle")
                }
        }
    }
}

#Preview {
    TabBar()
}
