//
//  SportsView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import SwiftUI

struct SportsView: View {
    
    var sportsList: [TrendingModel] = [sports1, sports2, sports3, sports4, sports5, sports6]
    
    var body: some View {
        
        List(sportsList, id: \.id) { item in
        
            ItemView(type: .sports, item: item)
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
            
        }
        .listStyle(.inset)
    }
}

struct SportsView_Previews: PreviewProvider {
    static var previews: some View {
        SportsView()
    }
}
