//
//  TabView1.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 26/02/23.
//

import SwiftUI

struct FeedView: View {
    
    @State var feedList: [FeedModel] = [post1, post2, post3, post4, post5, post6, post7]
    
    var body: some View {
        
        List(feedList, id: \.id) { feedItem in
        
            FeedItemView(post: feedItem)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            
        }
        .listStyle(.inset)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
