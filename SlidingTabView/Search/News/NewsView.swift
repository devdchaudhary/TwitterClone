//
//  NewsView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import SwiftUI

struct NewsView: View {
    
    @State var newsList: [TrendingModel] = [news1, news2, news3, news4, news5, news6, news7, news8, news9, news10, news11]
    
    var body: some View {
        
        List(newsList, id: \.id) { list in
        
            ItemView(type: .news, item: list)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            
        }
        .listStyle(.inset)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
