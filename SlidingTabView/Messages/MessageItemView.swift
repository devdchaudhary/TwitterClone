//
//  MessageItemView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 03/03/23.
//

import SwiftUI

struct MessageItemView: View {
    
    let item: MessageModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                
                Image(item.posterImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        
                        Text(item.posterName)
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                        
                        Text("@\(item.userName)")
                            .foregroundColor(Color(uiColor: .systemGray))
                            .font(.system(size: 14))
                        
                        Text(item.datePosted)
                            .foregroundColor(.black)
                            .font(.system(size: 14))
                        
                    }
                    
                    Text(item.message)
                        .font(.system(size: 14))
                        .foregroundColor(Color(uiColor: .systemGray))
                    
                }
            }
        }
        .padding()
    }
    
    private func showMenu() {
        
    }
}


//struct MessageItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageItemView(item: MessageModel(.init()))
//    }
//}
