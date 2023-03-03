//
//  EntertainmentView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import SwiftUI

struct EntertainmentView: View {
    
    var entList: [TrendingModel] = [ent1, ent2, ent3]
    
    var body: some View {
        
        List(entList, id: \.id) { item in
        
            ItemView(type: .entertainment, item: item)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            
        }
        .listStyle(.inset)
    }
}

struct EntertainmentView_Previews: PreviewProvider {
    static var previews: some View {
        EntertainmentView()
    }
}
