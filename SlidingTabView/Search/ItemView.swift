//
//  TrendingItemView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 02/03/23.
//

import SwiftUI

enum itemType {
    
    case trending, news, sports, entertainment
    
}

struct ItemView: View {
    
    let type: itemType
    let item: TrendingModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            switch type {
                
            case .trending:
                
                HStack {
                    
                    Text("\(item.itemNo.description). " + "\(item.itemName)")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Menu {
                        Button(action: showMenu) {
                            Text("Not interested")
                                .foregroundColor(.white)
                        }
                    }
                label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .frame(width: 10, height: 30)
                }
                }
                
                Text(item.itemTweetCount.description + "K Tweets")
                    .font(.system(size: 14))
                    .foregroundColor(Color(uiColor: .systemGray))
                
            case .news:
                
                HStack {
                    
                    Text("Trending")
                        .foregroundColor(Color(uiColor: .systemGray))
                    
                    Spacer()
                    
                    Menu {
                        Button(action: showMenu) {
                            Text("Not interested")
                                .foregroundColor(.white)
                        }
                    }
                label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .frame(width: 10, height: 30)
                }
                }
                
                Text("\(item.itemNo.description). " + "\(item.itemName)")
                    .foregroundColor(.black)
                
                Text(item.itemTweetCount.description + "K Tweets")
                    .font(.system(size: 14))
                    .foregroundColor(Color(uiColor: .systemGray))
                
            case .sports:
                
                HStack {
                    
                    Text("\(item.itemNo.description). " + "\(item.itemName)")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Menu {
                        Button(action: showMenu) {
                            Text("Not interested")
                                .foregroundColor(.white)
                        }
                    }
                label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .frame(width: 10, height: 30)
                }
                }
                
                Text(item.itemTweetCount.description + "K Tweets")
                    .font(.system(size: 14))
                    .foregroundColor(Color(uiColor: .systemGray))
                
            case .entertainment:
                
                HStack {
                
                    Text("\(item.itemNo.description). " + "\(item.itemName)")
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Menu {
                        Button(action: showMenu) {
                            Text("Not interested")
                                .foregroundColor(.white)
                        }
                    }
                label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .frame(width: 10, height: 30)
                }
                }
                
                Text(item.itemTweetCount.description + "K Tweets")
                    .font(.system(size: 14))
                    .foregroundColor(Color(uiColor: .systemGray))
            }
        }
        .padding()
    }
    
    private func showMenu() {
        
    }
}

//struct TrendingItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TrendingItemView()
//    }
//}
