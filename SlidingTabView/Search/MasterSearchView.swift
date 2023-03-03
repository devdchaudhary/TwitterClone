//
//  MasterSearchView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import SwiftUI

struct MasterSearchView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var selection = 0
    @State private var location: CGPoint = CGPoint(x: 60, y: 0)
    
    var body: some View {
        
       VStack {
           
           VStack {
               
               HStack {
                   
                   Group {
                       
                       Spacer()
                       
                       Button(action: {
                           withAnimation {
                               selection = 0
                           }
                       }) {
                           Text("For You")
                               .font(.system(size: 13).bold())
                               .foregroundColor(
                                selection == 0 ? .black : Color(uiColor: .systemGray3))
                       }
                       
                       Spacer()
                       
                       Button(action: {
                           withAnimation {
                               selection = 1
                           }
                       }) {
                           Text("Trending")
                               .font(.system(size: 13).bold())
                               .foregroundColor(selection == 1 ? .black : Color(uiColor: .systemGray2))
                       }
                       
                       Spacer()
                       
                       Button(action: {
                           withAnimation {
                               selection = 2
                           }
                       }) {
                           Text("News")
                               .font(.system(size: 13).bold())
                               .foregroundColor(selection == 2 ? .black : Color(uiColor: .systemGray2))
                       }
                       
                       Spacer()
                       
                       Button(action: {
                           withAnimation {
                               selection = 3
                           }
                       }) {
                           Text("Sports")
                               .font(.system(size: 13).bold())
                               .foregroundColor(selection == 3 ? .black : Color(uiColor: .systemGray2))
                       }
                       
                   }
                   
                   Spacer()
                                      
                   Button(action: {
                       withAnimation {
                           selection = 4
                       }
                   }) {
                       Text("Entertainment")
                           .font(.system(size: 13).bold())
                           .foregroundColor(selection == 4 ? .black : Color(uiColor: .systemGray2))
                   }
                   
                   Spacer()
                                      
               }
               .padding(.all, 10)
               
               ZStack(alignment: .top) {

                   Rectangle()
                       .frame(width: 65,height: 4)
                       .foregroundColor(.accentblue)
                       .padding(.bottom, 2)
                       .cornerRadius(2)
                       .onChange(of: selection) { selectedIndex in
                           switch selectedIndex {
                           case 0:
                               withAnimation {
                                   location.x = 60
                               }
                           case 1:
                               withAnimation {
                                   location.x = 120
                               }
                           case 2:
                               withAnimation {
                                   location.x = 180
                               }
                           case 3:
                               withAnimation {
                                   location.x = 240
                               }
                           case 4:
                               withAnimation {
                                   location.x = 330
                               }
                           default: return
                           }
                       }
                       .position(location)

                   Rectangle()
                       .frame(height: 1)
                       .foregroundColor(Color(uiColor: .systemGray5))
               }
           }
           .background(Color.white)
           .frame(height: 50)
                       
            TabView(selection: $selection) {
                
                FeedView()
                    .tag(0)
                
                TrendingView()
                    .tag(1)
                
                NewsView()
                    .tag(2)
                
                SportsView()
                    .tag(3)
                
                EntertainmentView()
                    .tag(4)
    
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct MasterSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MasterSearchView()
    }
}
