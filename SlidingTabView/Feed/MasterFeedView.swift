//
//  ContentView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 26/02/23.
//

import SwiftUI

struct MasterFeedView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var selection = 0
    @State private var location: CGPoint = CGPoint(x: 130, y: 0)
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image("devd")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 30, height: 30)
                    .padding(.leading)
                
                Spacer()
                
            }
            
            VStack {
                
                HStack {
                    
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
                        Text("Following")
                            .font(.system(size: 13).bold())
                            .foregroundColor(selection == 1 ? .black : Color(uiColor: .systemGray2))
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
                                    location.x = 130
                                }
                            case 1:
                                withAnimation {
                                    location.x += 145
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
                
                FeedView()
                    .tag(1)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MasterFeedView()
    }
}
