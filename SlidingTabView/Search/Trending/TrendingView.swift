//
//  TrendingView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import SwiftUI

struct TrendingView: View {
    
    var trendingList: [TrendingModel] = [trendingItem1, trendingItem2, trendingItem3, trendingItem4, trendingItem5, trendingItem6, trendingItem7, trendingItem8, trendingItem9, trendingItem10, trendingItem11]
    
    var body: some View {
        
        List(trendingList, id: \.id) { item in
        
            ItemView(type: .trending, item: item)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            
        }
        .listStyle(.inset)
    }
}

struct TrendingView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingView()
    }
}
