//
//  MasterNotificationsView.swift
//  SlidingTabView
//
//  Created by devdchaudhary on 01/03/23.
//

import SwiftUI

struct MasterNotificationsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var selection = 0
    @State private var location: CGPoint = CGPoint(x: 60, y: 0)
    
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
                
                Text("Notifications")
                    .font(.system(size: 15).bold())
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                Spacer()
                
                Image(systemName: "gear")
                    .font(.system(size: 18))
                    .foregroundColor(colorScheme == .dark ? .white : .black)

            }
            .padding(.horizontal)
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            selection = 0
                        }
                    }) {
                        Text("All")
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
                        Text("Verified")
                            .font(.system(size: 13).bold())
                            .foregroundColor(selection == 1 ? .black : Color(uiColor: .systemGray2))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            selection = 2
                        }
                    }) {
                        Text("Mentions")
                            .font(.system(size: 13).bold())
                            .foregroundColor(selection == 2 ? .black : Color(uiColor: .systemGray2))
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
                                    location.x = 170
                                }
                            case 2:
                                withAnimation {
                                    location.x = 290
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
                
                TrendingView()
                    .tag(0)
                
                TrendingView()
                    .tag(1)
                
                TrendingView()
                    .tag(2)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct MasterNotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        MasterNotificationsView()
    }
}
